<template>
    <div class="text-center pa-4">
      <v-dialog v-model="dialog" max-width="400" persistent>
        <template v-slot:activator="{ props: activatorProps }">

            
          <v-btn
            v-bind="activatorProps"
            style=" color: #df5151"
            flat
            icon="mdi-delete-outline"
          >
          </v-btn>
        </template>
  
        <v-card 
        prepend-icon="mdi-alert"
        title="WARNING"
        text="Are you sure you want to delete this section class list?.">
          <template v-slot:actions>
            <v-spacer></v-spacer>
  
            <v-btn @click="dialog = false"> Cancel</v-btn>
  
            <v-btn @click="dialog = false"> Confirm </v-btn>
          </template>
        </v-card>
      </v-dialog>
    </div>
  </template>
  
  <script>
    export default {
      data() {
        return {
          dialog: false,
        }
      },
    }
  </script>
  