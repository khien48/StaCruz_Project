<template>
  <div>

    <!-- use this for side by side component -->
    <!-- class="d-flex justify-start" -->

    <div >
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

          <StudentMove />
    

          <v-card class="me-4" flat >
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

    <v-container>
    <v-card>
      
      <v-table>
     
        <thead>
          <tr>
            <th class="text-left"></th>
            <th class="text-left">Grade Level</th>
            <th class="text-left">LRN</th>
            <th class="text-left">Student Name</th>
            <th class="text-left"></th>
          </tr>
        </thead>

      
        <tbody>
          <tr v-for="item in filteredLRN" :key="item.Grade_Level + item.LRN">
            <td ><v-checkbox color="green"></v-checkbox></td>
            <td>{{ item.Grade_Level }}</td>
            <td>{{ item.LRN }}</td>
            <td>{{ item.Student_Name }}</td>
            <td>
      
              <v-row>
                <v-menu>
                  <template v-slot:activator>
                    <StudentMove />
                  </template>
                </v-menu>
              </v-row>
            </td>
          </tr>
        </tbody>
    
      </v-table>
    </v-card>
  </v-container>
  </div>
</template>

<script>
export default {
  data() {
    return {
      LRN: [
        {
          Grade_Level: "1",
          LRN: "123123123123",
          Student_Name: "Reyes, Mark",
          Status: "Not Enrolled",
        },
        {
          Grade_Level: "2",
          LRN: "1231231231",
          Student_Name: "Garcia, Maria",
          Status: "Enrolled",
        },
        {
          Grade_Level: "2",
          LRN: "13123123",
          Student_Name: "Garcia, Maria",
          Status: "Enrolled",
        },
        {
          Grade_Level: "2",
          LRN: "1231312312",
          Student_Name: "Garcia, Maria",
          Status: "Not Enrolled",
        },
        {
          Grade_Level: "3",
          LRN: "13123123",
          Student_Name: "Lopez, Juan",
          Status: "Not Enrolled",
        },
        {
          Grade_Level: "4",
          LRN: "12313131231",
          Student_Name: "Martinez, Ana",
          Status: "Enrolled",
        },
        {
          Grade_Level: "5",
          LRN: "1312312313",
          Student_Name: "Hernandez, Carlos",
          Status: "Enrolled",
        },
        {
          Grade_Level: "6",
          LRN: "12312312312",
          Student_Name: "Gonzalez, Sofia",
          Status: "Enrolled",
        },
        {
          Grade_Level: "7",
          LRN: "1312313131",
          Student_Name: "Perez, Luis",
          Status: "Enrolled",
        },
        {
          Grade_Level: "8",
          LRN: "1123131323",
          Student_Name: "Sanchez, Diego",
          Status: "Not Enrolled",
        },
        {
          Grade_Level: "9",
          LRN: "12312313123",
          Student_Name: "Ramirez, Elena",
          Status: "Enrolled",
        },
        {
          Grade_Level: "10",
          LRN: "13123131231",
          Student_Name: "Torres, Miguel",
          Status: "Enrolled",
        },
      ],
      selectedGradeLevels: [],
      search: "",
    };
  },
  computed: {
    filteredLRN() {
      let filtered = this.LRN;

      if (this.selectedGradeLevels.length > 0) {
        filtered = filtered.filter((item) =>
          this.selectedGradeLevels.includes(`Grade ${item.Grade_Level}`)
        );
      }

      if (this.search.trim() !== "") {
        const searchTerm = this.search.trim().toLowerCase();
        filtered = filtered.filter(
          (item) =>
            item.Grade_Level.toLowerCase().includes(searchTerm) ||
            item.LRN.toLowerCase().includes(searchTerm) ||
            item.Student_Name.toLowerCase().includes(searchTerm)
        );
      }

      return filtered;
    },
  },
};
</script>

