<script setup lang="ts">
import { defineEmits } from "vue";
defineEmits<{
  (e: "click", resetPoints: number): void;
}>();
</script>
<template>
  <div class="Reset" @click="$emit('click', 0)">
    <button>Reset</button>
  </div>
</template>
<style scoped>
button {
  border: none;
  background-color: #996132;
  color: white;
  font-weight: 700;
  font-size: 16px;
  padding: 16px 28px;
}

button:hover {
  background-color: #996132;
  cursor: pointer;
  color: white;
}
</style>
