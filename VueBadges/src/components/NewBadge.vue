<template>
    <BadgeExample :fullname="fullName" :city="city" :postalCode="postalCode" :country="country" />
    <div v-if="!submitted">
        <button @click="displayForm" type="button"
            class="mt-5 items-center focus:outline-none text-white bg-red-900 hover:bg-red-500 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:focus:ring-red-900">Create
            a new Badge</button>
    </div>
    <div v-else class="block max-w-sm p-6 mt-2 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 ">

        <div class="flex flex-col justify-between my-5">
            <input v-model="firstname" type="text" placeholder="First Name"
                class="mb-2 font-bold tracking-tight text-red-900 placeholder:text-red-500 border px-2 py-1 focus:ring-red-900 focus:ring-4 focus:outline-none"
                required>
            <input v-model="lastname" type="text" placeholder="Last Name"
                class="mb-2 font-bold tracking-tight text-red-900 placeholder:text-red-500 border px-2 py-1" required>
            <input v-model="city" type="text" placeholder="City"
                class="mb-2 font-bold tracking-tight text-red-900 placeholder:text-red-500 border px-2 py-1" required>
            <input v-model="postalCode" type="text" placeholder="Postal Code"
                class="mb-2 font-bold tracking-tight text-red-900 placeholder:text-red-500 border px-2 py-1" required>
            <input v-model="country" type="text" placeholder="Country"
                class="mb-2 font-bold tracking-tight text-red-900 placeholder:text-red-500 border px-2 py-1" required>

        </div>
        <div class="flex">
            <form @submit.prevent="addEmployee" class="w-96 mx-auto ">
                <button type="submit" :disabled="!firstname || !lastname || !city || !postalCode || !country"
                    :class="{ 'bg-gray-400 cursor-not-allowed': !firstname || !lastname || !city || !postalCode || !country, 'bg-red-500 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300': firstname && lastname && city && postalCode && country }"
                    class="text-white font-medium rounded-lg text-sm px-4 py-2 ">Add Task</button>
            </form>
            <button @click="cancelForm" type="button"
                class=" items-center text-white font-medium bg-red-500 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300  rounded-lg text-sm px-6 py-2 dark:focus:ring-red-900">Cancel
            </button>
        </div>
    </div>
</template>

<script setup>
import { ref, watch, computed } from 'vue'

import BadgeExample from '@/components/BadgeExample.vue';

const submitted = ref(false)

const displayForm = () => {
    submitted.value = true
}

const cancelForm = () => {
    submitted.value = false;
    firstname.value = '';
    lastname.value = '';
    city.value = '';
    postalCode.value = '';
    country.value = '';
}

import { collection, addDoc } from "firebase/firestore";
import { db } from '../firebase/index.js'

const employeesCollectionRef = collection(db, 'employees');

const firstname = ref('');
const lastname = ref('');
const city = ref('');
const postalCode = ref('');
const country = ref('');


const fullName = computed(() => `${firstname.value} ${lastname.value}`);

watch([firstname, lastname], () => {
    fullName.value = `${firstname.value} ${lastname.value}`;
});

const addEmployee = () => {
    addDoc(employeesCollectionRef, {
        firstname: firstname.value,
        lastname: lastname.value,
        city: city.value,
        postalCode: postalCode.value,
        country: country.value
    });

    firstname.value = '';
    lastname.value = '';
    city.value = '';
    postalCode.value = '';
    country.value = '';
}



// employeesArray.forEach(employee => {
//     addDoc(employeesCollectionRef, employee);
// });

</script>