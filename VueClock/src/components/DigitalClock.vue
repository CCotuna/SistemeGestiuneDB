<template>
    <div class="digital-clock w-32 max-h-16 bg-red-900 text-white border-white border items-center text-center"><span>{{
        currentTime
            }}</span></div>
</template>

<script setup>
import { ref, onMounted, onBeforeUnmount } from 'vue';

const currentTime = ref('');

const updateTime = () => {
    const now = new Date();
    const hours = String(now.getHours()).padStart(2, '0');
    const minutes = String(now.getMinutes()).padStart(2, '0');
    const seconds = String(now.getSeconds()).padStart(2, '0');
    currentTime.value = `${hours}:${minutes}:${seconds}`;
};

const intervalId = setInterval(updateTime, 1000);

onMounted(updateTime);

onBeforeUnmount(() => {
    clearInterval(intervalId);
});
</script>

<style scoped>
.digital-clock {
    font-size: 24px;
    font-family: Arial, sans-serif;
    padding: 10px;
    border-radius: 5px;
}
</style>