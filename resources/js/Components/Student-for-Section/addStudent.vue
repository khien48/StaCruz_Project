<template>
  <div class="pa-4 text-center">
    <v-btn
        size="small"
        icon
        flat
    
      >
        <v-dialog activator="parent" max-width="800" max-height="750">
          <template v-slot:default="{ isActive }">
            <v-card rounded="lg">
              
              <v-card-title class="d-flex justify-space-between align-center">
                <div class="text-h5 text-medium-emphasis ps-2">
                 ADD STUDENT
                </div>

                <v-btn
                  icon="mdi-close"
                  variant="text"
                  @click="isActive.value = false"
                ></v-btn>
              </v-card-title>

              <v-divider class="mb-4"></v-divider>

               <Add-StudentList />

              <v-divider class="mt-2"></v-divider>

            </v-card>

          </template>
        </v-dialog>



        <v-icon style="color: #1f636f;" size="25" icon="mdi-plus"></v-icon>

      </v-btn>

  </div>
</template>