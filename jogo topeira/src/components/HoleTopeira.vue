<script setup lang="ts">
import { defineProps, defineEmits } from "vue";
defineProps<{
  itemShow: boolean;
}>();
defineEmits<{
  (e: "click", itemShow: boolean): void;
}>();
</script>

<template>
  <div class="hole-topeira" @click="$emit('click', itemShow)">
    <img v-show="itemShow" class="topeira-img" src="@/assets/topeira.png" />
  </div>
</template>

<style scoped>
.hole-topeira {
  position: relative;
  width: 50px;
  height: 50px;
  border-radius: 50px;
  background-color: brown;
  padding: 20px;
}

.topeira-img {
  position: absolute;
  height: 40px;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
}
</style>
