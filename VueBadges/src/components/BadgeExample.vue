<template>
    <div class="flex flex-col h-fit p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 ">
        <div class="flex justify-between space-x-10">
            <h5 class="mb-2 font-bold tracking-tight text-gray-900 ">ID Number</h5>
            <h5 class="mb-2 font-bold tracking-tight text-gray-900 ">Badge Example</h5>
            <h5 class="mb-2 font-bold tracking-tight text-gray-900 ">Company Logo</h5>
        </div>
        <div class="flex flex-col justify-between mt-5">
            <h5 class="mb-2 font-bold tracking-tight text-gray-900 "><span class="text-sm text-gray-300">Fullname:
                </span>{{ fullname
                }}</h5>
            <h5 class="mb-2 font-bold tracking-tight text-gray-900 "><span class="text-sm text-gray-300">City: </span>{{
                    city }}</h5>
            <h5 class="mb-2 font-bold tracking-tight text-gray-900 "><span class="text-sm text-gray-300">Postal Code:
                </span>{{ postalCode }}</h5>
            <h5 class="mb-2 font-bold tracking-tight text-gray-900 "><span class="text-sm text-gray-300">Country:
                </span>{{ country }}</h5>
        </div>
        <div class="flex flex-col items-center">
            <p class="font-normal text-gray-700 ">Security Powered by Aqua</p>
        </div>
    </div>
</template>

<script setup>

const props = defineProps({
    fullname: String,
    city: String,
    postalCode: String,
    country: String
});
</script>