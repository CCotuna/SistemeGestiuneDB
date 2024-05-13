<script setup>
import { useVerseStore } from '@/stores/index';
import axios from 'axios';

const verseStore = useVerseStore();

let userInput = "";

// async - multiple tasks to be executed concurrently without blocking the execution of the main program
const fetchVerse = async () => {
    try {
        const finalUrl = `https://bible-api.com/${userInput}?translation=rccv`;
        // http request - get
        const response = await axios.get(finalUrl);
        verseStore.verse = response.data;
        verseStore.previousVerses.unshift(response.data);

        if (verseStore.previousVerses.length > 5) {
            verseStore.previousVerses.pop();
        }

        localStorage.setItem('previousVerses', JSON.stringify(verseStore.previousVerses));
    } catch (error) {
        console.log("Error fetching verse: ", error);
    }
}


if (localStorage.getItem('previousVerses')) {
    verseStore.previousVerses = JSON.parse(localStorage.getItem('previousVerses'));
}

const clearLocalStorage = () => {
    localStorage.removeItem('previousVerses');
    verseStore.previousVerses = [];
}
</script>

<template>
    <!-- https://bible-api.com/ -->
    <!-- https://bible-api.com/ioan 3:16?translation=rccv -->
    <div class="flex space-x-20 m-16">
        <div class="flex flex-col space-y-5">
            <!-- User input for verse -->
            <input type="text" class="px-5 py-2 border border-red-800 rounded" placeholder="Book and chapter"
                v-model="userInput">
            <button @click="fetchVerse" class="px-5 py-2 bg-red-800 text-white rounded">Incarca Versetul</button>
        </div>
        <div>
            <div class="block max-w-sm p-6 bg-white border border-red-800 rounded-lg shadow hover:bg-gray-100">
                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900">Versetul zilei</h5>
                <div v-if="verseStore.verse">
                    <p class="font-normal text-gray-700">{{ verseStore.verse.reference }}</p>
                    <p class="font-normal text-gray-700">{{ verseStore.verse.text }}</p>
                </div>
                <div v-else>
                    Trebuie sa introduci o referinta !
                </div>

            </div>

        </div>
        <div>
            <div class="block max-w-sm p-6 bg-white border border-red-800 rounded-lg shadow hover:bg-gray-100">
                <div class="flex justify-between space-x-5">
                    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900">Istoric Versete (last 5)</h5>
                    <button @click="clearLocalStorage" class="">
                        <i class="bi bi-trash-fill text-2xl text-red-900"></i>
                    </button>
                </div>
                <ul class="space-y-5">
                    <li v-for="(previousVerse, index) in verseStore.previousVerses" :key="index"
                        class="font-normal text-gray-700">
                        <hr class="mb-3 border-red-900 border">
                        <span>
                            {{ previousVerse.reference }} <br>
                            {{ previousVerse.text }}
                        </span>
                    </li>
                </ul>
            </div>
        </div>
    </div>

</template>

<style scoped></style>
