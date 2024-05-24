<script setup>
import AppLayout from '@/Layouts/AppLayout.vue';
import StudentList from '@/Components/Student-for-Section/StudentList.vue';
import SectionList from '@/Components/Section/SectionList.vue';
</script>

<template>
    <AppLayout title="Dashboard">

        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Section List
            </h2>
        </template>

        <v-app>
       
            <v-col> 
            <!-- Main Content -->
            <div class="card">
              <Splitter style="height: 620px" class="mb-5">
                <SplitterPanel class="align-items-center justify-content-center" :size="25" :minSize="10">
                  <SectionList />     <!-- section list component -->
                </SplitterPanel>
                <SplitterPanel class="align-items-center justify-content-center">
                  <v-main>
                    <StudentList /> <!-- student list component -->
                  </v-main>
                </SplitterPanel>
              </Splitter>
            </div>
        </v-col>
        </v-app>
    </AppLayout>
</template>
