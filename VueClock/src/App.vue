<template>
    <div class="grid grid-cols-2 max-w-96 p-5 items-center">
        <Clock></Clock>
        <DigitalClock></DigitalClock>
    </div>
</template>
<script setup>
import Clock from './components/Clock.vue';
import DigitalClock from './components/DigitalClock.vue';
</script>