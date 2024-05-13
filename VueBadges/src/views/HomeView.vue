<script setup>
import BadgeExample from '@/components/BadgeExample.vue';
import EmployeeView from '@/views/EmployeeView.vue';
import NewBadge from '@/components/NewBadge.vue';

</script>

<template>
  <main>
    <div id="sticky-banner" tabindex="-1"
      class="fixed top-0 start-0 z-50 flex justify-between w-full p-4 border-b border-gray-200 bg-gray-50 ">
      <div class="flex items-center mx-auto">
        <p class="flex items-center text-sm font-normal text-gray-500 ">

          <span>Made by Denis, Natan, Caleb, Roli, Eusebiu, Calin :)</span>
        </p>
      </div>

    </div>

    <div class="flex justify-between mt-10">
      <div class="flex flex-col mt-10 ms-10">
        <NewBadge />
      </div>
      <EmployeeView />
    </div>
    <div class="flex mx-auto space-x-10">

    </div>
  </main>
</template>
