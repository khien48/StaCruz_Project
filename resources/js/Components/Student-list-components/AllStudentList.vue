<script setup>
import StudentAdd from "@/Components/Student-list-components/StudentAdd.vue";
import StudentMove from "@/Components/Student-list-components/StudentMove.vue";
</script>

<template>



  <div>
    <div>
      <v-card class="me-4" flat>
        <template v-slot:prepend>
          <v-col>
            <v-combobox
              color="teal"
              grow
              width="200"
              chips
              hide-details
              multiple
              label="Grade Level"
              :items="[
                'Grade 1',
                'Grade 2',
                'Grade 3',
                'Grade 4',
                'Grade 5',
                'Grade 6',
              ]"
              v-model="selectedGradeLevels"
              variant="solo-filled"
            ></v-combobox>
          </v-col>
        </template>
        <template v-slot:append>
          <StudentAdd />
          <StudentMove />
          <div class="text-center pa-4">
            <v-dialog v-model="dialog" max-width="400" persistent>
              <template v-slot:activator="{ props: activatorProps }">
                <v-btn
                  v-bind="activatorProps"
                  v-tooltip.focus.top="'Remove'"
                  icon="mdi-delete-outline"
                  variant="text"
                  style="color: #df5151"
                >
                </v-btn
              ></template>

              <v-alert
              class="overlay-alert"
              append
              width="500"
              text="Successfully Deleted"
              title="Delete"
              type="success"
              closable
              v-model="alert"
            ></v-alert>
            

              <v-card
                text="Are you sure you want to delete the selected students?"
                title="Delete Selected Student"
              >
                <template v-slot:actions>
                  <v-spacer></v-spacer>

                  <v-btn @click="uncheckItems" color="green"> No </v-btn>

                  <v-btn
                    :loading="loading"
                    class="flex-grow-1"
                    height="48"
                    variant="tonal"
                    color="error"
                    @click="deleteSelectedStudents(items.lrn)"
                  >
                    Yes
                  </v-btn>
                </template>
              </v-card>
            </v-dialog>
          </div>
          <v-card class="me-4" flat>
            <v-card-text>
              <v-text-field
                v-model="search"
                density="compact"
                width="250"
                label="Search"
                prepend-inner-icon="mdi-magnify"
                variant="solo-filled"
                flat
                hide-details
                single-line
              ></v-text-field>
            </v-card-text>
          </v-card>

          
        </template>
      </v-card>
    </div>
    <v-card flat>
      <v-table>
        <thead>
          <tr>
            <th class="text-left"></th>
            <th class="text-left">Grade Level</th>
            <th class="text-left">LRN</th>
            <th class="text-left">Student Name</th>
            <th class="text-left">Gender</th>
            <th class="text-left">Status</th>
            <th class="text-left"></th>
          </tr>
        </thead>

        <tbody v-if="this.items.length > 0" >
          <tr v-for="(items, index) in items" :key="index">
            <td :width="100">
              <v-checkbox color="green" v-model="items.isChecked"></v-checkbox>
            </td>

            <td>{{ items.grade_lvl }}</td>
            <td>{{ items.lrn }}</td>
            <td>
              {{
                items.stu_lname +
                " " +
                items.stu_fname +
                " " +
                items.stu_mname +
                " " +
                items.stu_suffix
              }}
            </td>
            <td>{{getGender(items.stu_gender) }}</td>
            <td>
              <v-card
                class="statusStyle"
                flat
                density="compact"
                :class="{
                  enrolled: getStatus(items.stu_status) === 'Enrolled',
                  'not-enrolled':
                    getStatus(items.stu_status) === 'Not Enrolled',
                }"
              >
                <v-row>
                  <v-col>{{ getStatus(items.stu_status) }}</v-col>
                </v-row>
              </v-card>
            </td>
            <td>
              <v-row>
                <v-menu>
                  <template v-slot:activator>
                    <v-btn
                      v-tooltip.focus.top="'Remove'"
                      icon="mdi-delete-outline"
                      variant="text"
                      style="color: #df5151"
                      @click="deleteStudent(items.lrn)"
                    >
                    </v-btn>
                  </template>
                </v-menu>
              </v-row>
            </td>
          </tr>
        </tbody>
        <tbody v-else>
          <v-container colspan="6">
            <v-col>
              <v-progress-circular
                color="primary"
                indeterminate
                :size="30"
              ></v-progress-circular>
            </v-col>
          </v-container>
        </tbody>
      </v-table>
    </v-card>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      alert: false,
      loading: false,
      dialog: false,
      items: [],
      search: "",
    };
  },
  mounted() {
    this.getStudentList();
  },
  methods: {
    getStudentList() {
      axios.get("http://localhost:8000/api/students").then((res) => {
        this.items = res.data.students;
        console.log(this.items);
      });
    },
    deleteStudent(lrn) {
      window.location.href = `/delete-student-list/${lrn}`;
    
    },
    deleteSelectedStudents() {
      const selectedLRNs = this.items
        .filter((item) => item.isChecked)
        .map((item) => item.lrn);
      if (selectedLRNs.length > 0) {
        selectedLRNs.forEach((lrn) => {
          this.deleteStudent(lrn);
        });
        this.loading = true;
        this.handleProjectAdded();
     
      } else {
        alert("No students selected for deletion.");
      }
     
    },
      uncheckItems() {
    this.items.forEach(item => {
      item.isChecked = false;
      this.dialog= false;
  
    });
  },
  handleProjectAdded() {
      this.alert = true;
      setTimeout(() => {
        this.alert = false; // Hide the success message after 1 second
      }, 2000);
    },
    getStatus(status) {
      return status === 0 ? "Not Enrolled" : "Enrolled";
    },
    getGender(gender) {
  return gender === 'F' ? "Female" : "Male";
},
  },
};
</script>

<style scoped>
.enrolled {
  background-color: lightgreen;
}
.not-enrolled {
  background-color: lightcoral;
}
.statusStyle {
  width: 100px;
  border-radius: 50px;
  text-align: center;
}
.overlay-alert {
  position: absolute;
  margin-right: 10px;
  bottom: 350px;
  /* Adjust as needed */
  left: 400px;
  /* Adjust as needed */
  z-index: 1000;
  /* Ensure it appears on top */
}

</style>
