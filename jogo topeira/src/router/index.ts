import { createRouter, createWebHashHistory, RouteRecordRaw } from "vue-router";
import HomeView from "../views/HomeView.vue";

export const routes = {
  home: {
    path: "/",
    name: "home",
    component: HomeView,
  },
  about: {
    path: "/about",
    name: "about",
    component: () => import("../views/AboutView.vue"),
  },
};

const router = createRouter({
  history: createWebHashHistory(),
  routes: Object.values(routes) as RouteRecordRaw[],
});

export default router;
