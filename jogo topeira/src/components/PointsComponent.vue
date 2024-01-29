<script setup lang="ts">
import { defineProps } from "vue";
defineProps<{
  pontuacao: number;
}>();
</script>
<template>
  <div class="pontuacao">
    <p>Pontuação</p>
    <p>{{ pontuacao }}</p>
  </div>
</template>

<style scoped>
.pontuacao {
  border: 4px solid white;
  width: 100px;
  height: 82px;
  background-color: sandybrown;
}
</style>
