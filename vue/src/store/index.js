import { createStore } from "vuex";
import axiosClient from "../axios";

const store = createStore({
  state: {
    user: {
      data: {},
      token: sessionStorage.getItem("TOKEN"),
    },
    dashboard: {
      loading: false,
      data: {}
    },
    bookings: {
      loading: false,
      links: [],
      data: []
    },
    currentBooking: {
      data: {},
      loading: false,
    },
    questionTypes: ["text", "select", "radio", "checkbox", "textarea"],
    notification: {
      show: false,
      type: 'success',
      message: ''
    }
  },
  getters: {},
  actions: {
    register({commit}, user) {
      return axiosClient.post('/register', user)
        .then((response) => {
          commit('setUser', data.user);
          commit('setToken', data.token)
          return data;
        })
    },
    login({commit}, user) {
      return axiosClient.post('/login', user)
        .then(({data}) => {
          commit('setUser', data.user);
          commit('setToken', data.token)
          return data;
        })
    },
    logout({commit}) {
      return axiosClient.post('/logout')
        .then(response => {
          commit('logout')
          return response;
        })
    },
    getUser({commit}) {
      return axiosClient.get('/user')
      .then(res => {
        console.log(res);
        commit('setUser', res.data)
      })
    },
    getDashboardData({commit}) {
      commit('dashboardLoading', true)
      return axiosClient.get(`/dashboard`)
      .then((res) => {
        commit('dashboardLoading', false)
        commit('setDashboardData', res.data)
        return res;
      })
      .catch(error => {
        commit('dashboardLoading', false)
        return error;
      })

    },
    getBookings({ commit }, {url = null} = {}) {
      commit('setBookingsLoading', true)
      url = url || "/booking";
      return axiosClient.get(url).then((res) => {
        commit('setBookingsLoading', false)
        commit("setBookings", res.data);
        return res;
      });
    },
    getBooking({ commit }, id) {
      commit("setCurrentBookingLoading", true);
      return axiosClient
        .get(`/booking/${id}`)
        .then((res) => {
          commit("setCurrentBooking", res.data);
          commit("setCurrentBookingLoading", false);
          return res;
        })
        .catch((err) => {
          commit("setCurrentBookingLoading", false);
          throw err;
        });
    },
    getBookingBySlug({ commit }, slug) {
      commit("setCurrentBookingLoading", true);
      return axiosClient
        .get(`/booking-by-slug/${slug}`)
        .then((res) => {
          commit("setCurrentBooking", res.data);
          commit("setCurrentBookingLoading", false);
          return res;
        })
        .catch((err) => {
          commit("setCurrentBookingLoading", false);
          throw err;
        });
    },
    saveBooking({ commit, dispatch }, booking) {

      delete booking.image_url;

      let response;
      if (booking.id) {
        response = axiosClient
          .put(`/booking/${booking.id}`, booking)
          .then((res) => {
            commit('setCurrentBooking', res.data)
            return res;
          });
      } else {
        response = axiosClient.post("/booking", booking).then((res) => {
          commit('setCurrentBooking', res.data)
          return res;
        });
      }

      return response;
    },
    deleteBooking({ dispatch }, id) {
      return axiosClient.delete(`/booking/${id}`).then((res) => {
        dispatch('getBookings')
        return res;
      });
    },
    saveBookingAnswer({commit}, {bookingId, answers}) {
      return axiosClient.post(`/booking/${bookingId}/answer`, {answers});
    },
  },
  mutations: {
    logout: (state) => {
      state.user.token = null;
      state.user.data = {};
      sessionStorage.removeItem("TOKEN");
    },

    setUser: (state, user) => {
      state.user.data = user;
    },
    setToken: (state, token) => {
      state.user.token = token;
      sessionStorage.setItem('TOKEN', token);
    },
    dashboardLoading: (state, loading) => {
      state.dashboard.loading = loading;
    },
    setDashboardData: (state, data) => {
      state.dashboard.data = data
    },
    setBookingsLoading: (state, loading) => {
      state.bookings.loading = loading;
    },
    setBookings: (state, bookings) => {
      state.bookings.links = bookings.meta.links;
      state.bookings.data = bookings.data;
    },
    setCurrentBookingLoading: (state, loading) => {
      state.currentBooking.loading = loading;
    },
    setCurrentBooking: (state, booking) => {
      state.currentBooking.data = booking.data;
    },
    notify: (state, {message, type}) => {
      state.notification.show = true;
      state.notification.type = type;
      state.notification.message = message;
      setTimeout(() => {
        state.notification.show = false;
      }, 3000)
    },
  },
  modules: {},
});

export default store;
