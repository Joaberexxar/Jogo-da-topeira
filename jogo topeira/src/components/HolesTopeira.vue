<script setup lang="ts">
import HoleTopeira from "./HoleTopeira.vue";
import { onMounted, ref } from "vue";
import Points from "./PointsComponent.vue";
import ResetPoints from "./ResetPoints.vue";
const itemShow = ref<number>();
const points = ref<number>(0);
function genItemShow() {
  itemShow.value = Math.round(Math.random() * 8) + 1;
}
onMounted(() => {
  setInterval(() => {
    genItemShow();
  }, 2000);
});
</script>

<template>
  <div class="center">
    <div class="father-holes">
      <HoleTopeira
        v-for="i in 9"
        :key="i"
        :item-show="i == itemShow"
        @click="
          (itemShow) => {
            if (itemShow) {
              genItemShow();
              points++;
            }
          }
        "
      />
    </div>
    <div>
      <Points :pontuacao="points" />
      <ResetPoints
        @click="
          (blablabla) => {
            points = blablabla;
          }
        "
      />
    </div>
  </div>
</template>

<style scoped>
.father-holes {
  display: flex;
  background-color: rgb(0, 255, 0);
  align-items: center;
  width: 380px;
  justify-content: center;
  display: grid;
  grid-template-columns: repeat(3, 0fr);
  grid-template-rows: repeat(3, 100px);
  gap: 10px;
}
.center {
  display: flex;
  justify-content: center;
}
</style>
