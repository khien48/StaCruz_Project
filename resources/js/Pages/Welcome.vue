<template>
  <v-app>
    <v-container >
      <v-app-bar flat rounded>
        <template v-slot:prepend>
          <v-container>
            <v-avatar size="50px">
              <v-img
                alt="Avatar"
                src="https://i.pinimg.com/736x/eb/09/7d/eb097d5783e9eab27bac4010264a1063.jpg"
              ></v-img>
            </v-avatar>
          </v-container>
        </template>

        <v-app-bar-title></v-app-bar-title>

        <template v-slot:append>
          <nav v-if="canLogin" class="-mx-3 flex flex-1 justify-end">
            <Link
              v-if="$page.props.auth.user"
              :href="route('dashboard')"
              class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
            >
              <v-btn
                :loading="loading"
                class="flex-grow-1"
                height="48"
                variant="tonal"
                color="teal"
                @click="load"
              >
                dashboard
              </v-btn>
            </Link>

            <template v-else>
              <Link
                :href="route('login')"
                class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
              >
                <v-btn
                  :loading="loading"
                  class="flex-grow-1"
                  height="48"
                  variant="tonal"
                  color="teal"
                  @click="load"
                >
                  Login
                </v-btn>
              </Link>

              <Link
                v-if="canRegister"
                :href="route('register')"
                class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
              >
                <v-btn
                  :loading="loading"
                  class="flex-grow-1"
                  height="48"
                  variant="tonal"
                  color="teal"
                  @click="load"
                >
                  Register
                </v-btn>
              </Link>

     
            </template>
          </nav>
        </template>
      </v-app-bar>
    </v-container>
  </v-app>
</template>

  <script setup>
import { Head, Link } from "@inertiajs/vue3";

defineProps({
  canLogin: {
    type: Boolean,
  },
  canRegister: {
    type: Boolean,
  },
  laravelVersion: {
    type: String,
    required: true,
  },
  phpVersion: {
    type: String,
    required: true,
  },
});

function handleImageError() {
  document.getElementById("screenshot-container")?.classList.add("!hidden");
  document.getElementById("docs-card")?.classList.add("!row-span-1");
  document.getElementById("docs-card-content")?.classList.add("!flex-row");
  document.getElementById("background")?.classList.add("!hidden");
}
</script>
