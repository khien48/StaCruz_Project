<script setup>
import { Link } from '@inertiajs/vue3';
</script>

<template>
    <Link :href="'/'">
        <v-col >
            <v-avatar size="100px">
              <v-img
                alt="Avatar"
                src="https://i.pinimg.com/736x/eb/09/7d/eb097d5783e9eab27bac4010264a1063.jpg"
              ></v-img>
              <!-- Display the value here for the ProfileImage -->
            </v-avatar>
          </v-col>
    </Link>
</template>
