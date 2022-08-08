<!-- This example requires Tailwind CSS v2.0+ -->
<template>
  <PageComponent>
    <template v-slot:header>
      <div class="flex justify-between items-center">
        <h1 class="text-3xl font-bold text-gray-900">Packages</h1>
        <!--Search Button [Not Functional]-->
        <form>   
            <label for="default-search" class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-gray-300">Search</label>
            <div class="relative">
                <div class="flex absolute inset-y-0 left-0 items-center pl-3 pointer-events-none">
                    <svg aria-hidden="true" class="w-5 h-5 text-gray-500 dark:text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
                </div>
                <input type="search" id="searchbar" v-model="bookings.data.title" onkeyup="search_package()" class="block p-4 pl-10 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Search " required="">
                <button type="submit" class="text-white absolute right-2.5 bottom-2.5 bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Search</button>
            </div>
        </form>
        <DisclosureButton
              as="a"
              @click="logout"
              onClick="window.location.reload();"
              class="block px-3 py-2 rounded-md text-base font-medium text-gray-400 hover:text-white hover:bg-gray-700 cursor-pointer"
              >Sign Out
        </DisclosureButton>
        
      </div>
    </template>
    <div v-if="bookings.loading" class="flex justify-center">Loading...</div>
    <div v-else-if="bookings.data.length">
      <div class="grid grid-cols-1 gap-5 sm:grid-cols-2 md:grid-cols-3">
        <PackageListItem
          v-for="(booking) in bookings.data"
          :key="booking.id"
          :booking="booking"
          :class="Packages"
          
          
        />
      </div>
      <div class="flex justify-center mt-5">
        <nav
          class="relative z-0 inline-flex justify-center rounded-md shadow-sm -space-x-px"
          aria-label="Pagination"
        >
          <!-- Current: "z-10 bg-indigo-50 border-indigo-500 text-indigo-600", Default: "bg-white border-gray-300 text-gray-500 hover:bg-gray-50" -->
          <a
            v-for="(link, i) of bookings.links"
            :key="i"
            :disabled="!link.url"
            href="#"
            @click="getForPage($event, link)"
            aria-current="page"
            class="relative inline-flex items-center px-4 py-2 border text-sm font-medium whitespace-nowrap"
            :class="[
              link.active
                ? 'z-10 bg-indigo-50 border-indigo-500 text-indigo-600'
                : 'bg-white border-gray-300 text-gray-500 hover:bg-gray-50',
              i === 0 ? 'rounded-l-md bg-gray-100 text-gray-700' : '',
              i === bookings.links.length - 1 ? 'rounded-r-md' : '',
            ]"
            v-html="link.label"
          >
          </a>
        </nav>
      </div>
      
    </div>
    <div v-else class="text-gray-600 text-center py-16">
      Your don't have packages yet
    </div>
  </PageComponent>
</template>




<!--Script -->
<script setup>
import store from "../store";
import { computed } from "vue";
import PageComponent from "../components/PageComponent.vue";
import PackageListItem from "../components/PackageListItem.vue";

const bookings = computed(() => store.state.bookings);

store.dispatch("getBookings");


function getForPage(ev, link) {
  ev.preventDefault();
  if (!link.url || link.active) {
    return;
  }

  store.dispatch("getBookings", { url: link.url });
}


function search_package(){
  let input = document.getElementById('searchbar').value
    input=input.toLowerCase();
    let x = document.getElementsByClassName('Packages');
      
    for (i = 0; i < x.length; i++) { 
        if (!x[i].innerHTML.toLowerCase().includes(input)) {
            x[i].style.display="none";
        }
        else {
            x[i].style.display="list-item";                 
        }
    }
}



  function logout() {
    store.dispatch("logout").then(() => {
      router.push({
        name: "Login",
      });
    });
  }

  
  

    

</script>

