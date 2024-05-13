<script setup>
import { ref } from 'vue';
const display = ref('');

const buttons = [
    { label: '1' },
    { label: '2' },
    { label: '3' },
    { label: '+' },
    { label: '4' },
    { label: '5' },
    { label: '6' },
    { label: '-' },
    { label: '7' },
    { label: '8' },
    { label: '9' },
    { label: '*' }, 
    { label: 'C' },
    { label: '0' },
    { label: '=' },
    { label: '/' },
];

const calculate = () => {
    try {
        display.value = eval(display.value);
    } catch (error) {
        display.value = 'ERROR!';
    }
}

const handleClick = (label) => {
    if (label === 'C') {
        display.value = '';
    } else if (label === '=') {
        calculate();
    } else {
        display.value += label;
    }
};

</script>

<template>
    <div class="border p-5 m-10 flex flex-col items-center shadow-md shadow-red-500">
        <input v-model="display" type="text" disabled class="text-center leading-normal border shadow-md bg-transparent w-52 mb-5">
        <div class="grid grid-cols-4">
            <button v-for="button in buttons" :key="button.label" @click="handleClick(button.label)" class="bg-red-900 text-white font-bold hover:bg-red-500 shadow-md shadow-red-300 px-6 py-4 mx-4 my-2">
                {{ button.label }}
            </button>
        </div>
    </div>
</template>