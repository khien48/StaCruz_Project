<template>
  <div class="text-center pa-4">
    <v-dialog v-model="dialog" max-width="550" persistent>
      <template v-slot:activator="{ props }">
        <v-btn v-bind="props" style="color: #1f636f" flat icon="mdi-export">
        </v-btn>
      </template>

      <v-card title="Add">
        <v-card-text>
          <v-row dense>
            <v-col cols="12" md="6">
              <div class="Subholder">LRN</div>
              <v-text-field
                density="compact"
                placeholder="LRN"
                variant="outlined"
              >
              </v-text-field>
            </v-col>

            <v-col cols="12" md="6">
              <div class="Subholder">Last Name</div>
              <v-text-field
                density="compact"
                placeholder="Last Name"
                variant="outlined"
              ></v-text-field>
            </v-col>

            <v-col cols="12" md="6">
              <div class="Subholder">First Name</div>
              <v-text-field
                density="compact"
                placeholder="First Name"
                variant="outlined"
              ></v-text-field>
            </v-col>

            <v-col cols="12" md="6">
              <div class="Subholder">Middle Name</div>
              <v-text-field
                density="compact"
                placeholder="Middle Name"
                variant="outlined"
              ></v-text-field>
            </v-col>

            <v-col cols="12" md="6">
              <div class="Subholder">Sufixx</div>
              <v-text-field
                density="compact"
                placeholder="Sufixx (Optional)"
                variant="outlined"
              ></v-text-field>
            </v-col>
          </v-row>
        </v-card-text>
        <v-card-actions>
          <v-spacer></v-spacer>

          <v-btn
            style="margin-bottom: 20px"
            text="Close"
            variant="plain"
            @click="dialog = false"
          ></v-btn>

          <v-btn
            style="margin-right: 20px; margin-bottom: 20px"
            color="teal"
            text="Save"
            variant="tonal"
            @click="saveBook"
          ></v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </div>
</template>

<script>
export default {
  data: () => ({
    dialog: false,
  }),
  methods: {
    saveEDIT() {
      // Implement your logic to save the book here
      console.log("Updated");
      // Close the dialog after saving
      this.dialog = false;
    },
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap");

* {
  font-family: "Poppins", sans-serif;
}

.Subholder {
  font-size: 12px;
}
</style>
