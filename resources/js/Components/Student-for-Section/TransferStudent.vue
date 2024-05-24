<script setup>
import SectionAdd from "@/Components/Section/SectionAdd.vue";
</script>

<template>
  <!-- Alert Message -->
  <v-alert
    class="overlay-alert"
    append
    width="500"
    text="Successfully added"
    title="Message"
    type="success"
    closable
    v-model="alert"
  ></v-alert>


<v-col>
  <v-container> 
      <v-card class="me-4" flat>
        <v-text-field
          v-model="search"
          style="width: 300px"
          density="compact"
          label="Search"
          prepend-inner-icon="mdi-magnify"
          variant="solo-filled"
          flat
          hide-details
          single-line
        ></v-text-field>
      </v-card>
    </v-container>
    </v-col>

      <!-- Main -->

    <v-divider></v-divider>

    <v-virtual-scroll :items="filteredItems" height="520" item-height="48">
      <template v-slot:default="{ item }">
        <v-list-item>
          <h5>{{ item.SectionName }}</h5>
          
          <!-- Display the value here for the SectionName -->
          <h6 class="greyH">{{ item.SectionAd }}</h6>
          <!-- Display the value here for the SectionAd -->

          <template v-slot:prepend>
            <v-col>
              <v-avatar size="50px" style="margin-right: 10px;">
                <v-img
                alt="Avatar"
                src="https://i.pinimg.com/736x/eb/09/7d/eb097d5783e9eab27bac4010264a1063.jpg"
              ></v-img>
                <!-- Display the value here for the ProfileImage -->
              </v-avatar>
            </v-col>
          </template>

          <template v-slot:append>
            <v-list-item>
              <h5 class="greyH">{{ "GRADE " + item.SectionGradeLvl }}</h5>
              <!-- Display the value here for the SectionGradeLvl -->
            </v-list-item>

            <v-btn
              v-tooltip.focus.top="'Transfer'"
              icon="mdi-file-move-outline"
              variant="text"
              style="color: #1f636f"
            >
            </v-btn>
          </template>
        </v-list-item>
        <v-divider></v-divider>
      </template>
    </v-virtual-scroll>

</template>

<script>
import SectionAdd from "@/Components/Section/SectionAdd.vue";

import axios from "axios";

export default {
  name: "StudentList",
  components: {},
  data() {
    return {
      alert: false,
      search: "",
      items: [],
    };
  },
  mounted() {
    this.getSectionList();
  },

  computed: {
    filteredItems() {
      return this.items.filter((item) => {
        return (
          item.SectionName.toLowerCase().includes(this.search.toLowerCase()) ||
          item.SectionAd.toLowerCase().includes(this.search.toLowerCase()) ||
          item.SectionGradeLvl.toLowerCase().includes(this.search.toLowerCase())
        );
      });
    },
  },

  methods: {
    getSectionList() {
      axios.get("http://localhost:8000/api/sections").then((res) => {
        this.items = res.data.sections;
        console.log(this.items);
      });
    },
    deleteSection(id) {
      window.location.href = `/delete-section-list/${id}`;
    },

    openSection(id) {
      window.location.href = `/section/${id}/hello`;
    },

    addSection(newSection) {
      this.items.push(newSection);
    },
    navigateToStudentList() {
      // Your existing navigate function logic here
    },
    handleProjectAdded() {
      this.alert = true;
      setTimeout(() => {
        this.alert = false; // Hide the success message after 1 second
      }, 2000);
    },
  },
};
</script>

<style scoped>
.greyH {
  color: rgb(89, 89, 89);
}

.overlay-alert {
  position: absolute;
  margin-right: 10px;
  top: 10px;
  /* Adjust as needed */
  right: 20px;
  /* Adjust as needed */
  z-index: 1000;
  /* Ensure it appears on top */
}
</style>