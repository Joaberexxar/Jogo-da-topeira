<script setup lang="ts">
import { defineProps } from "vue";
defineProps<{ text: string }>();
</script>

<template>
  <button>{{ text }}</button>
</template>

<style scoped>
button {
  border: none;
  background-color: blue;
  color: white;
  font-weight: 700;
  font-size: 16px;
  border-radius: 10px;
  padding: 16px 24px;
}

button:hover {
  background-color: darkred;
  cursor: pointer;
  color: white;
}
</style>
