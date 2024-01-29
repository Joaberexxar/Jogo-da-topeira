<script setup lang="ts">
import bodyComponent from "@/components/bodyComponent.vue";
import mainComponent from "@/components/mainComponent.vue";
</script>

<template>
  <div class="home" style="display: flex; flex-direction: column">
    <div>
      <bodyComponent />
    </div>
    <section>
      <mainComponent />
    </section>
  </div>
</template>
