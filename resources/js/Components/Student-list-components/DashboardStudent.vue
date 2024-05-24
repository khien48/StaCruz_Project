<template>

<v-list-item>
    <v-card
      class="mx-auto"
      color="grey-lighten-4"
      max-width="600"
    >
      <template v-slot:prepend>
        <v-icon
        :color="checking ? 'teal-darken-3' : 'teal'"
          class="me-8"
          icon="mdi-account-school"
          size="64"
          @click="takePulse"
        ></v-icon>
      </template>

  
      <template v-slot:title>
        <div class="text-caption text-grey text-uppercase">
          STUDENTS
        </div>
  
        <span
          class="text-h3 font-weight-black"
          v-text="avg || '—'"
        ></span>
        <strong v-if="avg"></strong>
      </template>
  
  
      <v-sheet color="transparent">
        <v-sparkline
          :key="String(avg)"
          :gradient="['#f72047', '#ffd200', '#1feaea']"
          :line-width="3"
          :model-value="heartbeats"
          :smooth="16"
          stroke-linecap="round"
          auto-draw
        ></v-sparkline>
        
      </v-sheet>
    </v-card>

  </v-list-item>

  <v-list-item>
    <v-card
      class="mx-auto"
      color="grey-lighten-4"
      max-width="600"
    >
      <template v-slot:prepend>
        <v-icon
        :color="checking ? 'teal-darken-3' : 'teal'"
          class="me-8"
          icon="mdi-school"
          size="64"
          @click="takePulse"
        ></v-icon>
      </template>

  
      <template v-slot:title>
        <div class="text-caption text-grey text-uppercase">
          Enrolled
        </div>
  
        <span
          class="text-h3 font-weight-black"
          v-text="avg || '—'"
        ></span>
        <strong v-if="avg"></strong>
      </template>
  
  
      <v-sheet color="transparent">
        <v-sparkline
          :key="String(avg)"
          :gradient="['#f72047', '#ffd200', '#1feaea']"
          :line-width="3"
          :model-value="heartbeats"
          :smooth="16"
          stroke-linecap="round"
          auto-draw
        ></v-sparkline>
        
      </v-sheet>
    </v-card>

  </v-list-item>

  <v-list-item>
    <v-card
      class="mx-auto"
      color="grey-lighten-4"
      max-width="600"
    >
      <template v-slot:prepend>
        <v-icon
        :color="checking ? 'teal-darken-3' : 'teal'"
          class="me-8"
          icon="mdi-school"
          size="60"
          @click="takePulse"
        ></v-icon>
      </template>

  
      <template v-slot:title>
        <div class="text-caption text-grey text-uppercase">
          Not Enrolled
        </div>
  
        <span
          class="text-h3 font-weight-black"
          v-text="avg || '—'"
        ></span>
        
        <strong v-if="avg"></strong>
      </template>
  
  
      <v-sheet color="transparent">
        <v-sparkline
          :key="String(avg)"
          :gradient="['#f72047', '#ffd200', '#1feaea']"
          :line-width="3"
          :model-value="heartbeats"
          :smooth="16"
          stroke-linecap="round"
          auto-draw
        ></v-sparkline>
        
      </v-sheet>
    </v-card>

  </v-list-item>


  </template>
  
  <script>
    const exhale = ms =>
      new Promise(resolve => setTimeout(resolve, ms))
  
    export default {
      data: () => ({
        checking: false,
        heartbeats: [],
      }),
  
      computed: {
        avg () {
          const sum = this.heartbeats.reduce((acc, cur) => acc + cur, 0)
          const length = this.heartbeats.length
  
          if (!sum && !length) return 0
  
          return Math.ceil(sum / length)
        },
      },
  
      created () {
        this.takePulse(false)
      },
  
      methods: {
        heartbeat () {
          return Math.ceil(Math.random() * (120 - 80) + 80)
        },
        async takePulse (inhale = true) {
          this.checking = true
  
          inhale && await exhale(1000)
  
          this.heartbeats = Array.from({ length: 20 }, this.heartbeat)
  
          this.checking = false
        },
      },
    }
  </script>