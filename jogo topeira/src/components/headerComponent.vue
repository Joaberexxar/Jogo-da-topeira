<script setup lang="ts">
import logoComponent from "./logoComponent.vue";
import navComponent from "./navComponent.vue";
</script>
<template>
  <header class="topo">
    <div>
      <div>
        <logoComponent />
      </div>
      <div class="nav">
        <navComponent />
      </div>
    </div>
  </header>
</template>
<style scoped>
.topo {
  background-color: black;
}
</style>
