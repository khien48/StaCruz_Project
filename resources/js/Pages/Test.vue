<script setup>
import AppLayout from '@/Layouts/AppLayout.vue';

</script>

<template>
    <AppLayout title="Dashboard">

        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Test
            </h2>
        </template>

        <v-app>
            <AllStudentList />
  
        </v-app>
    </AppLayout>
</template>
