<template>
  <PageComponent title="View Bookings">
    <div v-if="loading" class="flex justify-center">Loading...</div>
    <div
      v-else
      class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-5 text-gray-700"
    >

    <div id="viewBookings" >
    <!--<h1 id="headerH1">View Bookings</h1><br>-->
    <div class="row" v-if="showListBooking">
      <div v-if="data.displayBookings.length" class="text-left">
      <div class="col-sm-70">
        <table class="min-w-max w-full table-auto">
          <thead>
            <tr class="bg-gray-200 text-gray-600 uppercase text-sm leading-normal">
              <td>No.</td>
              <!--<td>Name</td>
              <td>Email</td>-->
              <td>Package</td>
              <td>Created Date</td>
              <td>Booked Date</td>
              <td>Expiry Date</td>
              <td>Status</td>
              <td colspan="4">Actions</td>
            </tr>
          </thead>
          <tbody>

            
            <!--<tr :key="index" v-for="(booking, index) in bookings">
              <td class="py-3 px-6 text-left">{{ index + 1 }}</td>
              <td class="py-3 px-6 text-left">{{ booking.name }}</td>
              <td class="py-3 px-6 text-left">{{ booking.email }}</td>
              <td class="py-3 px-6 text-left"> {{ booking.company.name }}</td>
              <td class="py-3 px-6 text-left">{{ booking.address.street }}</td>
              <td class="py-3 px-6 text-left">{{ booking.address.city }}</td>-->
              
            <tr :key1="index" v-for="(answer,index) of data.displayBookings"
            :key="answer.id">
              <td class="py-3 px-6 text-left">{{ index + 1}}</td>
              <!--<td class="py-3 px-6 text-left">{{ user.name }}</td>
              <td class="py-3 px-6 text-left">{{ user.email }}</td>-->
              <td class="py-3 px-6 text-left"> {{ answer.booking.title }}</td>
              <td class="py-3 px-6 text-left">{{ answer.booking.created_at }}</td>
              <td class="py-3 px-6 text-left">{{ answer.end_date }}</td>
              <td class="py-3 px-6 text-left">{{ answer.booking.expire_date }}</td>
              <td class="py-3 px-6 text-left">{{ answer.booking.status ? "Active" : "Draft" }}</td>
              
              <td>
                <button
                  class="btn btn-danger"
                  type="button"
                  @click="deleteBooking(index)"
                >
                  <div class="w-4 mr-2 transform hover:text-red-500 hover:scale-110">
                      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                      </svg>
                  </div>
                </button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
    </div>
  </div>
    
      
    </div>
  </PageComponent>
</template>


<script setup>
import {EyeIcon, PencilIcon} from "@heroicons/vue/solid"
import DashboardCard from "../components/core/DashboardCard.vue";
import TButton from "../components/core/TButton.vue";
import PageComponent from "../components/PageComponent.vue";
import { computed } from "vue";
import { useStore } from "vuex";


const store = useStore();

const loading = computed(() => store.state.dashboard.loading);
const data = computed(() => store.state.dashboard.data);
//const user = computed(() => store.state.user.data);


store.dispatch("getDashboardData");
//store.dispatch("getUser");

</script>


<script>

import axios from "axios";

export default {
  name: "App",
  data() {
    return {
      user: {},
      showListBooking: true,
      users: [],
    };
  },
  methods: {
    deleteBooking(index) {
      if (confirm("Are you sure wants to delete the booking?")) {
        this.users.splice(index, 1);
        // Need to make a call to backend api to delete in db
      }
    },
  },

};
</script>





<style>
#viewBookings {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;

}

</style>

<style scoped></style>
