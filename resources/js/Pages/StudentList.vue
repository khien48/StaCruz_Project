<script setup>
import AppLayout from '@/Layouts/AppLayout.vue';
import AllStudentList from '@/Components/Student-list-components/AllStudentList.vue';
</script>

<template>
    <AppLayout title="Dashboard">

        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Student List
            </h2>
        </template>

        <v-app>
  
                    <AllStudentList /> <!-- student list component -->
  
        </v-app>
    </AppLayout>
</template>
