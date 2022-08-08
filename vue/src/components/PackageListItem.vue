<template>
  <div
    class="flex flex-col py-4 px-6 shadow-md bg-white hover:bg-gray-50 h-[470px]"
  >
    <img
      :src="
        booking.image_url ||
        'https://st3.depositphotos.com/23594922/31822/v/600/depositphotos_318221368-stock-illustration-missing-picture-page-for-website.jpg'
      "
      :alt="booking.title"
      class="w-full h-48 object-cover"
    />
    <h4 class="mt-4 text-lg font-bold">{{ booking.title }}</h4>
    <div v-html="booking.description" class="overflow-hidden flex-1"></div>

    <div class="flex justify-between items-center mt-3">
      <TButton :href="`/view/booking/${booking.slug}`">
        <button class="wo-5 h-5 mr-2 " />
        Book Package
      </TButton>

    </div>
  </div>
</template>

<script setup>
import TButton from "./core/TButton.vue";


const { booking } = defineProps({
  booking: Object,
});

</script>

<style></style>
