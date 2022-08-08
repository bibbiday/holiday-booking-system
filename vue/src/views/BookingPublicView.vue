<template>
  <div class="py-5 px-8">
    <div v-if="loading" class="flex justify-center">Loading...</div>
    <form @submit.prevent="submitBooking" v-else class="container mx-auto" method="post">
      <div class="grid grid-cols-6 items-center">
        <div class="mr-4">
          <img :src="booking.image_url" alt="" />
        </div>
        <div class="col-span-5">
          <h1 class="text-3xl mb-3">{{ booking.title }}</h1>
          <p class="text-gray-500 text-sm" v-html="booking.description"></p>
        </div>
      </div>

      <!-- Get Name and Email of the User-->
      <br>
      <div class="flex flex-wrap -mx-3 mb-6">
    <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-first-name">
        Enter your Name:
      </label>
       <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="name" type="text" placeholder="Enter Your Name" required>
    </div>
    <div class="w-full md:w-1/2 px-3">
      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-last-name">
        Enter your Email:
      </label>
      <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="email" type="email" placeholder="Enter Your Email" required>
    </div>
  </div>
  <!--
      <h2> Enter your name: </h2>
      <input type="text" id="name" placeholder="Enter Your Name" required>
      <h2> Enter your email: </h2>
		  <input type="email" id="email" placeholder="Enter Your Email" required><br><br>
  -->
      <div v-if="bookingFinished" class="py-8 px-6 bg-emerald-400 text-white w-[600px] mx-auto">
        <div class="text-xl mb-3 font-semibold ">Thank you for booking our holiday package.<br>Please make sure to check your spam/junk folder in mail.</div>
        <!--<button @click="submitAnotherResponse" type="button" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
          Submit another booking
        </button>-->
        <br><br>
        <button onclick="location.href='/UserDashboard'" type="button" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
          Go Back to User Dashboard
        </button>
      </div>
      <div v-else>
        <hr class="my-3">
        <div v-for="(question, ind) of booking.questions" :key="question.id">
          <QuestionViewer
            v-model="answers[question.id]"
            :question="question"
            :index="ind"
          />
        </div>
        
      <!-- Submit Button will trigger the sendEmail Function and will store result in Database -->
        <button
          type="submit"
          @click="sendEmail"
          class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
        >
          Submit
        </button>
      </div>
    </form>
  </div>
</template>

<script setup>
import { computed, ref } from "vue";
import { useRoute } from "vue-router";
import { useStore } from "vuex";
import QuestionViewer from "../components/viewer/QuestionViewer.vue";
const route = useRoute();
const store = useStore();

const loading = computed(() => store.state.currentBooking.loading);
const booking = computed(() => store.state.currentBooking.data);

const bookingFinished = ref(false);

const answers = ref({});

store.dispatch("getBookingBySlug", route.params.slug);

function submitBooking() {
  console.log(JSON.stringify(answers.value, undefined, 2));
  store
    .dispatch("saveBookingAnswer", {
      bookingId: booking.value.id,
      answers: answers.value,
    })
    .then((response) => {
      if (response.status === 201) {
        bookingFinished.value = true;
      }
    });
}

function submitAnotherResponse() {
  answers.value = {};
  bookingFinished.value = false;
}



// Email Script Using smtp.js and elasticemail
let Script = document.createElement("script");
Script.setAttribute("src", "https://smtpjs.com/v3/smtp.js");
document.head.appendChild(Script);

function sendEmail(){
		Email.send({
			Host: "smtp.elasticemail.com",
			Username: "publishfresh@gmail.com",
			Password: "8890894EE2A5B1D24E141DCECA46AC7A9380",
			To: document.getElementById("email").value,
			From: 'publishfresh@gmail.com',
			Subject: "Booking Confirmed",
			Body: "Hi <strong>"+document.getElementById("name").value+"</strong>,<br><br>This is to notify "+document.getElementById("name").value+" that your booking has been confirmed. Thank you for booking our Holiday Package.<br><br> <a href='http://localhost:3000/'><button type='button' style='background-color: #00008B;color: white;border: none;padding: 15px 32px;font-size: 16px;' >Go Back to Website</button></a> <br><br>Thank you,<br>Admin Team"
        }).then(
        message => alert(message)
        );
	}


</script>



<style></style>
