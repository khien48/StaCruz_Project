<script setup>
import addStudent from '@/Components/Student-for-Section/addStudent.vue';
import exportStudent from '@/Components/Student-for-Section/exportStudent.vue';
import TransferStudent from '@/Components/Student-for-Section/TransferStudent.vue';
</script>

<template>
  <v-card  flat>

    <!-- tool bar -->
    <template v-slot:prepend>
      <v-col>
        <v-list-item
          prepend-avatar="https://thumbs.dreamstime.com/b/happy-male-teacher-pen-binder-sitting-portrait-mature-desk-classroom-36510111.jpg"
          title="OBA"
          subtitle="Mark Agustin Jr"
        >
        </v-list-item>
      </v-col>
    </template>

    <template v-slot:append>

      <addStudent v-tooltip.focus.top="'Add'" />
      <exportStudent v-tooltip.focus.top="'Export'" />

      <v-col>
        <v-container>
          <v-text-field
            width="230"
            v-model="search"
            density="compact"
            label="Search"
            prepend-inner-icon="mdi-magnify"
            variant="solo-filled"
            flat
            hide-details
            single-line
          ></v-text-field>
        </v-container>
      </v-col>
    </template>

    <!-- end-tollbar -->

    <!-- ---------------------------------------------------------------- -->

    <v-table fixed-header>
      <thead>
        <tr>
          <th class="text-left">Name</th>
          <th class="text-left">Gender</th>
          <th class="text-left">LRN</th>
          <th class="text-left"></th>
        </tr>
      </thead>


      <tbody>
        <tr v-for="item in Studentlist" :key="item.Name + item.Gender">
          <td>{{ item.Name }}</td>
          <td>{{ item.Gender }}</td>
          <td>{{ item.LRN }}</td>

          <td>
            <v-row>
              <v-menu>
                <!-- buttons -->
                <template v-slot:activator>
                  
                  <!-- transfer button -->
                  <v-btn
                    v-tooltip.focus.top="'Transfer'"
                    append-icon="mdi-file-move-outline"
                    variant="text"
                    style="color: #1f636f"
                  >
                    <v-dialog activator="parent" max-width="500">
                      <template v-slot:default="{ isActive }">
                        <v-card rounded="lg">
                          <!-- card tittle -->
                          <v-card-title
                            class="d-flex justify-space-between align-center"
                          >
                            <div class="text-medium-emphasis ps-2">
                              Transfer Student
                            </div>
                            <v-btn
                              icon="mdi-close"
                              variant="text"
                              @click="isActive.value = false"
                            ></v-btn>
                          </v-card-title>

                          <TransferStudent  />

                        </v-card>
                      </template>
                    </v-dialog>
                  </v-btn>
                  <!-- remove button -->
                  <v-btn
                    v-tooltip.focus.top="'Remove'"
                    prepend-icon="mdi-delete-outline"
                    variant="text"
                    style="color: #df5151"
                    @click="removelistData(Studentlist.indexOf(item))"
                  />
                </template>
              </v-menu>
            </v-row>
          </td>
        </tr>
      </tbody>
    </v-table>
  </v-card>
</template>

<script>
export default {
  data() {
    return {
      StudentData: [
        {
          Name: "Doe, John",
          Gender: "Male",
          LRN: "32132132132",
        },
        {
          Name: "Smith, Jane",
          Gender: "Female",
          LRN: "54354354354",
        },

        {
          Name: "Brown, Mike",
          Gender: "Male",
          LRN: "76576576576",
        },

        {
          Name: "Garcia, Maria",
          Gender: "Female",
          LRN: "98798798798",
        },

        {
          Name: "Lee, David",
          Gender: "Male",
          LRN: "10101010101",
        },
      ],
      selectedGradeLevels: [],
      search: "",
    };
  },
  computed: {
    Studentlist() {
      let filtered = this.StudentData;

      if (this.search.trim() !== "") {
        const searchTerm = this.search.trim().toLowerCase();
        filtered = filtered.filter(
          (item) =>
            item.Name.toLowerCase().includes(searchTerm) ||
            item.Gender.toLowerCase().includes(searchTerm) ||
            item.LRN.toLowerCase().includes(searchTerm)
        );
      }

      return filtered;
    },
  },
  methods: {
    removelistData(index) {
      this.StudentData.splice(index, 1);
    },
    addSection(newSection) {
      this.item.push(newSection);
    },
    navigateToStudentList() {
      // Your existing navigate function logic here
    },
  },
};
</script>

<style scoped></style>
