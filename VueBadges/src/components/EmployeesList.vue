<template>
    <div class="flex">
        <div class="flex flex-col">
            <h3 class="font-bold leading-4 text-xl mt-2">Employees List</h3>

            <div class="flex flex-col h-fit">
                <button @click="exportSelected" type="button"
                    class="mt-5 items-center focus:outline-none text-white bg-red-900 hover:bg-red-500 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:focus:ring-red-900">
                    Export Selected
                </button>
                <button @click="exportAll" type="button"
                    class="mt-5 items-center focus:outline-none text-white bg-red-900 hover:bg-red-500 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:focus:ring-red-900">
                    Export All
                </button>
                <button @click="exportSelectedXlsx" type="button"
                    class="mt-5 items-center focus:outline-none text-white bg-red-900 hover:bg-red-500 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:focus:ring-red-900">
                    Export Selected as Excel
                </button>
                <button @click="exportAllXlsx" type="button"
                    class="mt-5 items-center focus:outline-none text-white bg-red-900 hover:bg-red-500 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:focus:ring-red-900">
                    Export All as Excel
                </button>
            </div>
        </div>

        <div v-if="isEmployeesPopulated">
            <div v-for="employee in orderedEmployees" :key="employee.id"
                class="flex my-2 p-6 mx-10 border border-gray-200 rounded-lg shadow hover:bg-gray-100 justify-between">
                <input type="checkbox" v-model="selectedEmployees" :value="employee.id"
                    class="me-5 w-4 h-4 text-red-600 bg-gray-100 border-gray-300 rounded focus:ring-red-500  focus:ring-1 ">
                <h5>{{ employee.firstname }} {{ employee.lastname }} - {{ employee.city }} - {{
                    employee.postalCode }} - {{ employee.country }}</h5>
                <button @click="deleteTodo(employee.id)" type="button"
                    class="focus:outline-none text-white bg-red-800 hover:bg-red-500 focus:ring-4 focus:ring-red-600 font-medium rounded-lg text-sm px-4 ms-4 ">&cross;</button>
            </div>
        </div>
        <div v-else>
            <p>No employees available</p>
        </div>
    </div>
</template>

<script setup>
import { ref, onMounted, computed } from 'vue'
import { collection, onSnapshot, orderBy, query, deleteDoc, doc } from "firebase/firestore";
import { db } from '../firebase/index.js'
import jsPDF from 'jspdf';
import * as XLSX from 'xlsx';

const employeesCollectionRef = collection(db, 'employees');
const employeesCollectionQuery = query(employeesCollectionRef, orderBy('firstname'));

const employees = ref([]);
const selectedEmployees = ref([]);

const isEmployeesPopulated = computed(() => employees.value.length > 0);

onMounted(() => {
    onSnapshot(employeesCollectionQuery, (querySnapshot) => {
        const fbEmployees = [];
        querySnapshot.forEach((doc) => {
            const employee = {
                id: doc.id,
                firstname: doc.data().firstname,
                lastname: doc.data().lastname,
                city: doc.data().city,
                postalCode: doc.data().postalCode,
                country: doc.data().country,
            }
            fbEmployees.push(employee)
        });
        employees.value = fbEmployees;
    });
});

const deleteTodo = id => {
    deleteDoc(doc(employeesCollectionRef, id));
}

const orderedEmployees = computed(() => employees.value);

const exportSelected = () => {
    const selectedEmployeeIds = selectedEmployees.value;
    const selectedEmployeesData = employees.value.filter(employee => selectedEmployeeIds.includes(employee.id));
    exportAsPDF(selectedEmployeesData, 'selected_employees.pdf');
};

const exportAll = () => {
    exportAsPDF(employees.value, 'all_employees.pdf');
};

const exportAsPDF = (data, filename) => {
    const pdf = new jsPDF();
    data.forEach((employee, index) => {
        const lineHeight = 10;
        const startY = 10;
        if (index <= 30) {
            const startY = 10 + index;
        } else {
            const startY = index;
        }

        pdf.text(employee.firstname + ' ' + employee.lastname, 10, startY);
        pdf.text(employee.city, 10, startY + lineHeight);
        pdf.text(employee.postalCode, 10, startY + lineHeight * 2);
        pdf.text(employee.country, 10, startY + lineHeight * 3);
        if (index !== data.length - 1) {
            pdf.addPage();
        }
    });
    pdf.save(filename);
};


const exportSelectedXlsx = () => {
    const selectedEmployeeIds = selectedEmployees.value;
    const selectedEmployeesData = employees.value.filter(employee => selectedEmployeeIds.includes(employee.id));
    exportAsXlsx(selectedEmployeesData, 'selected_employees.xlsx');
};

const exportAllXlsx = () => {
    exportAsXlsx(employees.value, 'all_employees.xlsx');
};

const exportAsXlsx = (data, filename) => {
    const worksheet = XLSX.utils.json_to_sheet(data);

    const workbook = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(workbook, worksheet, 'Employees');

    XLSX.writeFile(workbook, filename);
};

</script>