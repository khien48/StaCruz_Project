<template>
    <div class="text-center pa-4">
      <v-dialog v-model="dialog" max-width="550" persistent>
        <template v-slot:activator="{ props }">
          <v-btn v-bind="props" style="color: #1f636f" flat icon="mdi-file-move-outline">
          </v-btn>
        </template>
  
        <v-card title="Move to Section">
   
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
  
  .Subholder{
  
    font-size: 12px;
  }
  
  
  </style>