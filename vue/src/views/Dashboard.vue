<template>
  <PageComponent title="Dashboard">
    <div v-if="loading" class="flex justify-center">Loading...</div>
    <div
      v-else
      class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-5 text-gray-700"
    >
      <DashboardCard class="order-1 lg:order-2" style="animation-delay: 0.1s">
        <template v-slot:title>Total Packages</template>
        <div
          class="text-8xl pb-4 font-semibold flex-1 flex items-center justify-center"
        >
          {{ data.totalBookings }}
        </div>
      </DashboardCard>
      <DashboardCard class="order-2 lg:order-4" style="animation-delay: 0.2s">
        <template v-slot:title>Total Bookings</template>
        <div
          class="text-8xl pb-4 font-semibold flex-1 flex items-center justify-center"
        >
          {{ data.totalAnswers }}
        </div>
      </DashboardCard>
      <DashboardCard
        class="order-3 lg:order-1 row-span-2"
        style="animation-delay: 0.2s"
      >
        <template v-slot:title>Latest Package</template>
        <div v-if="data.latestBooking">
          <img
            :src="data.latestBooking.image_url"
            class="w-[240px] mx-auto"
            alt=""
          />
          <h3 class="font-bold text-xl mb-3">{{ data.latestBooking.title }}</h3>
          <div class="flex justify-between text-sm mb-1">
            <div>Create Date:</div>
            <div>{{ data.latestBooking.created_at }}</div>
          </div>
          <div class="flex justify-between text-sm mb-1">
            <div>Expire Date:</div>
            <div>{{ data.latestBooking.expire_date }}</div>
          </div>
          <div class="flex justify-between text-sm mb-1">
            <div>Status:</div>
            <div>{{ data.latestBooking.status ? "Active" : "Draft" }}</div>
          </div>
          <div class="flex justify-between text-sm mb-1">
            <div>Itinerarys:</div>
            <div>{{ data.latestBooking.questions }}</div>
          </div>
          <div class="flex justify-between text-sm mb-3">
            <div>Bookings:</div>
            <div>{{ data.latestBooking.answers }}</div>
          </div>
          <div class="flex justify-between">
            <TButton
              :to="{ name: 'BookingView', params: { id: data.latestBooking.id } }"
              link
            >
              <PencilIcon class="w-5 h-5 mr-2" />
              Edit Packages
            </TButton>

          
          </div>
        </div>
        <div v-else class="text-gray-600 text-center py-16">
          Your don't have Packages yet
        </div>
      </DashboardCard>
      <DashboardCard class="order-4 lg:order-3 row-span-2" style="animation-delay: 0.3s">
        <template v-slot:title>
          <div class="flex justify-between items-center mb-3 px-2">
            <h3 class="text-2xl font-semibold">Latest Bookings</h3>
            <!--Replace Link with Working One-->
            <a
              href="/ViewBookings" 
              class="text-sm text-blue-500 hover:decoration-blue-500"
            >
              View all
            </a>
            
          </div>
        </template>

        <div v-if="data.latestAnswers.length" class="text-left">
          <a
            href="#"
            v-for="answer of data.latestAnswers"
            :key="answer.id"
            class="block p-2 hover:bg-gray-100/90"
          >
            <div class="font-semibold">{{ answer.booking.title }}</div>
            <small>
              Booking Made at:
              <i class="font-semibold">{{ answer.end_date }}</i>
            </small>
          </a>
        </div>
        <div v-else class="text-gray-600 text-center py-16">
          Your don't have Bookings yet
        </div>
      </DashboardCard>
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

store.dispatch("getDashboardData");
</script>

<style scoped></style>
