<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.1.1/flowbite.min.css"
	rel="stylesheet" />
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>


	<nav
		class="fixed top-0 z-50 w-full bg-white border-b border-teal-200 dark:bg-teal-950 dark:border-teal-700">
		<div class="px-3 py-3 lg:px-5 lg:pl-3">
			<div class="flex items-center justify-between">
				<div class="flex items-center justify-start rtl:justify-end">
					<button data-drawer-target="logo-sidebar"
						data-drawer-toggle="logo-sidebar" aria-controls="logo-sidebar"
						type="button"
						class="inline-flex items-center p-2 text-sm text-teal-500 rounded-lg sm:hidden hover:bg-teal-100 focus:outline-none focus:ring-2 focus:ring-teal-200 dark:text-teal-400 dark:hover:bg-teal-700 dark:focus:ring-teal-600">
						<span class="sr-only">Open sidebar</span>
						<svg class="w-6 h-6" aria-hidden="true" fill="currentColor"
							viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
               <path clip-rule="evenodd" fill-rule="evenodd"
								d="M2 4.75A.75.75 0 012.75 4h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 4.75zm0 10.5a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5a.75.75 0 01-.75-.75zM2 10a.75.75 0 01.75-.75h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 10z"></path>
            </svg>
					</button>
					<a
						href="https://docs.spring.io/spring-framework/docs/3.2.x/spring-framework-reference/html/mvc.html"
						class="flex ms-2 md:me-24"> <span
						class="self-center text-xl font-semibold sm:text-2xl whitespace-nowrap dark:text-white"><b>SpringHR</b></span>
					</a>
				</div>
				<div class="flex items-center">
					<div class="flex items-center ms-3">
						<div>
							<button type="button"
								class="flex text-sm bg-teal-800 rounded-full focus:ring-4 focus:ring-teal-300 dark:focus:ring-teal-600"
								aria-expanded="false" data-dropdown-toggle="dropdown-user">
								<span class="sr-only">Open user menu</span> <img
									class="w-8 h-8 rounded-full"
									src="<c:url value="/resources/images/avatar.png" />"
									alt="user photo">
							</button>
						</div>
						<div
							class="z-50 hidden my-4 text-base list-none bg-white divide-y divide-teal-100 rounded shadow dark:bg-teal-700 dark:divide-teal-600"
							id="dropdown-user">
							<div class="px-4 py-3" role="none">
								<p class="text-sm text-teal-900 dark:text-white" role="none">
									Hello there,</p>
								<p
									class="text-sm font-medium text-teal-900 truncate dark:text-teal-300"
									role="none">Hehe</p>
							</div>
							<ul class="py-1" role="none">
								<li><a href="<c:url value="/"/>"
									class="block px-4 py-2 text-sm text-teal-700 hover:bg-teal-100 dark:text-teal-300 dark:hover:bg-teal-600 dark:hover:text-white"
									role="menuitem">Dashboard</a></li>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>

	<aside id="logo-sidebar"
		class="fixed top-0 left-0 z-40 w-64 h-screen pt-20 transition-transform -translate-x-full bg-white border-r border-teal-200 sm:translate-x-0 dark:bg-teal-950 dark:border-teal-800"
		aria-label="Sidebar">
		<div
			class="h-full px-3 pb-4 overflow-y-auto bg-white dark:bg-teal-950">
			<ul class="space-y-2 font-medium">
				<li><a href="<c:url value="/"/>"
					class="flex items-center p-2 text-teal-900 rounded-lg dark:text-white hover:bg-teal-100 dark:hover:bg-teal-700 group">
						<svg
							class="w-5 h-5 text-teal-500 transition duration-75 dark:text-teal-400 group-hover:text-teal-900 dark:group-hover:text-white"
							aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
							fill="currentColor" viewBox="0 0 22 21">
                  <path
								d="M16.975 11H10V4.025a1 1 0 0 0-1.066-.998 8.5 8.5 0 1 0 9.039 9.039.999.999 0 0 0-1-1.066h.002Z" />
                  <path
								d="M12.5 0c-.157 0-.311.01-.565.027A1 1 0 0 0 11 1.02V10h8.975a1 1 0 0 0 1-.935c.013-.188.028-.374.028-.565A8.51 8.51 0 0 0 12.5 0Z" />
               </svg> <span class="ms-3">Dashboard</span>
				</a></li>
				<li><a href="<c:url value="/employees"/>"
					class="flex items-center p-2 text-teal-900 rounded-lg dark:text-white hover:bg-teal-100 dark:hover:bg-teal-700 group">
						<svg
							class="flex-shrink-0 w-5 h-5 text-teal-500 transition duration-75 dark:text-teal-400 group-hover:text-teal-900 dark:group-hover:text-white"
							aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
							fill="currentColor" viewBox="0 0 20 20">
                  <path
								d="m17.418 3.623-.018-.008a6.713 6.713 0 0 0-2.4-.569V2h1a1 1 0 1 0 0-2h-2a1 1 0 0 0-1 1v2H9.89A6.977 6.977 0 0 1 12 8v5h-2V8A5 5 0 1 0 0 8v6a1 1 0 0 0 1 1h8v4a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1v-4h6a1 1 0 0 0 1-1V8a5 5 0 0 0-2.582-4.377ZM6 12H4a1 1 0 0 1 0-2h2a1 1 0 0 1 0 2Z" />
               </svg> <span class="flex-1 ms-3 whitespace-nowrap">Employees</span>
				</a></li>

			</ul>
		</div>
	</aside>

	<div class="p-4 sm:ml-64">
		<div
			class="p-4 border-2 border-teal-200 border-dashed rounded-lg dark:border-teal-700 mt-14">
			<section class="bg-white ">
				<div class="py-2 px-4 mx-auto max-w-screen-xl text-center lg:py-8">
					<h1
						class="mb-2 text-4xl font-extrabold tracking-tight leading-none text-teal-900 md:text-5xl lg:text-6xl md:hover:text-orange-300 md:hover:shadow">SpringHR:
						Edit details of an Employee</h1>
				</div>
			</section>

			<section class="bg-white dark:bg-teal-900">
				<div class="py-8 px-4 mx-auto max-w-2xl lg:py-16">
					<h2 class="mb-4 text-xl font-bold text-teal-900 dark:text-white">Edit
						the employee</h2>

					<form:form method="post"
						action="${pageContext.request.contextPath}/employees/edit"
						modelAttribute="employee">
						<div class="grid gap-4 sm:grid-cols-2 sm:gap-6">
							<div class="sm:col-span-2">
								<label for="id"
									class="block mb-2 text-sm font-medium text-teal-900 dark:text-white">Id
								</label>
								<form:input path="id" readOnly="true" type="text" name="id"
									placeholder="Id"
									class="form-control bg-teal-50 border border-teal-300 text-teal-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-teal-700 dark:border-teal-600 dark:placeholder-teal-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
									required="" />
							</div>
							<div class="w-full">
								<label for="firstname"
									class="block mb-2 text-sm font-medium text-teal-900 dark:text-white">Firstname</label>
								<form:input path="firstname" name="firstname"
									placeholder="firstname"
									class="bg-teal-50 border border-teal-300 text-teal-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-teal-700 dark:border-teal-600 dark:placeholder-teal-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
									required="" />
							</div>
							<div class="w-full">
								<label for="lastname"
									class="block mb-2 text-sm font-medium text-teal-900 dark:text-white">Lastname</label>
								<form:input type="lastname" path="lastname" name="lastname"
									placeholder="lastname"
									class="bg-teal-50 border border-teal-300 text-teal-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-teal-700 dark:border-teal-600 dark:placeholder-teal-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
									required="" />
							</div>
							<div class="w-full">
								<label for="role"
									class="block mb-2 text-sm font-medium text-teal-900 dark:text-white">Role</label>
								<form:input type="role" path="role" name="role"
									placeholder="role"
									class="bg-teal-50 border border-teal-300 text-teal-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-teal-700 dark:border-teal-600 dark:placeholder-teal-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
									required="" />
							</div>
							<div class="w-full">
								<label for="date_of_employment"
									class="block mb-2 text-sm font-medium text-teal-900 dark:text-white">date_of_employment</label>
								<form:input type="date_of_employment" path="date_of_employment"
									name="date_of_employment" placeholder="date_of_employment"
									class="bg-teal-50 border border-teal-300 text-teal-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-teal-700 dark:border-teal-600 dark:placeholder-teal-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
									required="" />
							</div>
							<div class="w-full">
								<label for="email"
									class="block mb-2 text-sm font-medium text-teal-900 dark:text-white">Email</label>
								<form:input type="email" path="email" name="email"
									placeholder="email"
									class="bg-teal-50 border border-teal-300 text-teal-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-teal-700 dark:border-teal-600 dark:placeholder-teal-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
									required="" />
							</div>
							<div class="w-full">
								<label for="phone_number"
									class="block mb-2 text-sm font-medium text-teal-900 dark:text-white">Phone
									Number</label>
								<form:input type="phone_number" path="phone_number"
									name="phone_number" placeholder="phone_number"
									class="bg-teal-50 border border-teal-300 text-teal-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-teal-700 dark:border-teal-600 dark:placeholder-teal-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
									required="" />
							</div>
							<div class="w-full">
								<label for="salary"
									class="block mb-2 text-sm font-medium text-teal-900 dark:text-white">
									Salary</label>
								<form:input type="salary" path="salary" name="salary"
									placeholder="salary"
									class="bg-teal-50 border border-teal-300 text-teal-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-teal-700 dark:border-teal-600 dark:placeholder-teal-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
									required="" />
							</div>
							<div class="w-full">
								<label for="Qualification"
									class="block mb-2 text-sm font-medium text-teal-900 dark:text-white">Qualification</label>
								<form:input type="qualification" path="qualification"
									name="qualification" placeholder="qualification"
									class="bg-teal-50 border border-teal-300 text-teal-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-teal-700 dark:border-teal-600 dark:placeholder-teal-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
									required="" />
							</div>


						</div>
						<button type="submit"
							class="relative inline-flex items-center justify-center p-0.5 mb-2 me-2 my-2 overflow-hidden text-sm font-medium text-gray-900 rounded-lg group bg-gradient-to-br from-green-400 to-blue-600 group-hover:from-green-400 group-hover:to-blue-600 hover:text-white dark:text-white focus:ring-4 focus:outline-none focus:ring-green-200 dark:focus:ring-green-800">
							<span
								class="relative px-5 py-2.5 transition-all ease-in duration-75 bg-white dark:bg-gray-900 rounded-md group-hover:bg-opacity-0">
								Save </span>
						</button>

					</form:form>

				</div>
			</section>
		</div>
	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.1.1/flowbite.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/tw-elements.umd.min.js"></script>

</body>
</html>