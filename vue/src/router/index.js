import { createRouter, createWebHistory } from "vue-router";
import Dashboard from "../views/Dashboard.vue";
import UserDashboard from "../views/UserDashboard.vue";
import Bookings from "../views/Bookings.vue";
import ViewBookings from "../views/ViewBookings.vue";
import BookingView from "../views/BookingView.vue";
import Login from "../views/Login.vue";
import Register from "../views/Register.vue";
import NotFound from "../views/NotFound.vue";
import BookingPublicView from "../views/BookingPublicView.vue";
import DefaultLayout from "../components/DefaultLayout.vue";
import AuthLayout from "../components/AuthLayout.vue";
import store from "../store";

const routes = [
  {
    path: "/",
    redirect: "/dashboard",
    component: DefaultLayout,
    meta: { requiresAuth: true },
    children: [
      { path: "/dashboard", name: "Dashboard", component: Dashboard },
      //{ path: "/UserDashboard", name: "UserDashboard", component: UserDashboard },
      { path: "/bookings", name: "Bookings", component: Bookings },
      { path: "/ViewBookings", name: "ViewBookings", component: ViewBookings },
      { path: "/bookings/create", name: "BookingCreate", component: BookingView },
      { path: "/bookings/:id", name: "BookingView", component: BookingView },
    ],
  },
  {
    path: "/UserDashboard",
    name: 'UserDashboard',
    component: UserDashboard,
    //meta: { isGuest: true }
  },
  {
    path: "/view/booking/:slug",
    name: 'BookingPublicView',
    component: BookingPublicView
  },
  {
    path: "/auth",
    redirect: "/login",
    name: "Auth",
    component: AuthLayout,
    meta: {isGuest: true},
    children: [
      {
        path: "/login",
        name: "Login",
        component: Login,
      },
      {
        path: "/register",
        name: "Register",
        component: Register,
      },
    ],
  },
  {
    path: '/404',
    name: 'NotFound',
    component: NotFound
  }
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});


router.beforeEach((to, from, next) => {
  if (to.meta.requiresAuth && !store.state.user.token) {
    next({ name: "Login" });
  } else if (store.state.user.token && to.meta.isGuest) {
    next({ name: "Dashboard" });
  } else {
    next();
  }
});


export default router;
