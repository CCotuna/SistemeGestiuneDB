<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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


			<div id="dropdown-cta"
				class="p-4 mt-6 rounded-lg bg-blue-50 dark:bg-teal-700" role="alert">
				<div class="flex items-center mb-3">
					<span
						class="bg-orange-300 text-orange-800 text-sm font-semibold me-2 px-2.5 py-0.5 rounded dark:bg-orange-200 dark:text-orange-900">Beta</span>
					<button type="button"
						class="ms-auto -mx-1.5 -my-1.5 bg-blue-50 inline-flex justify-center items-center w-6 h-6 text-orange-900 rounded-lg focus:ring-2 focus:ring-blue-400 p-1 hover:bg-blue-200 h-6 w-6 dark:bg-orange-300 dark:text-orange-900 dark:hover:bg-orange-900"
						data-dismiss-target="#dropdown-cta" aria-label="Close">
						<span class="sr-only">Close</span>
						<svg class="w-2.5 h-2.5" aria-hidden="true"
							xmlns="http://www.w3.org/2000/svg" fill="none"
							viewBox="0 0 14 14">
                  <path stroke="currentColor" stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
               </svg>
					</button>
				</div>
				<p class="mb-3 text-sm text-orange-300">Please note that we are
					currently in beta, fine-tuning our features for an optimal
					experience. Your feedback is invaluable as we work towards
					perfection. Join us on this journey, and let's shape the future of
					HR together.</p>
			</div>
		</div>
	</aside>

	<div class="p-4 sm:ml-64">
		<div
			class="p-4 border-2 border-teal-200 border-dashed rounded-lg dark:border-teal-700 mt-14">




			<section class="bg-white ">
				<div class="py-2 px-4 mx-auto max-w-screen-xl text-center lg:py-8">
					<h1
						class="mb-2 text-4xl font-extrabold tracking-tight leading-none text-teal-900 md:text-5xl lg:text-6xl md:hover:text-orange-300 md:hover:shadow">SpringHR:
						Employees list</h1>
				</div>
			</section>








			<div class="relative overflow-x-auto shadow-md sm:rounded-lg my-8">
				<h1 class="text-2xl text-teal-900">
					<b>List of Employees</b>
				</h1>
				<table class="w-full text-sm  text-white">
					<thead
						class="text-xs text-white uppercase bg-teal-50 dark:bg-teal-700 dark:text-white md:hover:text-orange-600">
						<tr>
							<th scope="col" class="px-6 py-3">User ID</th>
							<th scope="col" class="px-6 py-3">Firstname</th>
							<th scope="col" class="px-6 py-3">Lastname</th>
							<th scope="col" class="px-6 py-3">Role</th>
							<th scope="col" class="px-6 py-3">Date of Employment</th>
							<th scope="col" class="px-6 py-3">Email</th>
							<th scope="col" class="px-6 py-3">Phone Number</th>
							<th scope="col" class="px-6 py-3">Salary</th>
							<th scope="col" class="px-6 py-3">Qualification</th>
							
							<th scope="col" class="px-6 py-3"></th>
							<th scope="col" class="px-6 py-3">Actions</th>
							<th scope="col" class="px-6 py-3"></th>

						</tr>
					</thead>
					<tbody>
						<c:forEach var="employee" items="${employees}">
							<tr
								class="bg-white border-b text-center dark:bg-teal-800 dark:border-teal-700 md:hover:text-orange-300">
								<th scope="row" class="px-6 py-4 font-medium whitespace-nowrap">
									<c:out value="${employee.id}" />
								</th>
								<td class="px-6 py-4"><c:out value="${employee.firstname}" />
								</td>
								<td class="px-6 py-4"><c:out value="${employee.lastname}" />
								</td>
								<td class="px-6 py-4"><c:out value="${employee.role}" /></td>
								<td class="px-6 py-4"><c:out
										value="${employee.date_of_employment}" /></td>
								<td class="px-6 py-4"><c:out value="${employee.email}" /></td>
								<td class="px-6 py-4"><c:out
										value="${employee.phone_number}" /></td>
								<td class="px-6 py-4"><c:out value="${employee.salary}" /></td>
								<td class="px-6 py-4"><c:out
										value="${employee.qualification}" /></td>

								<td class="px-6 py-4 md:hover:text-white"><a
									href="<c:url value="/employees/${employee.id}"/>">Details</a></td>
								<td class="px-6 py-4 md:hover:text-white"><a
									href="<c:url value="/employees/edit/${employee.id}"/>">Edit</a>
								</td>
								<td class="px-6 py-4 md:hover:text-white"><a
									href="<c:url value="/employees/delete/${employee.id}"/>">Delete</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>


			<a class="pointer" href="<c:url value="/employees/add"/>">
				<button
					class="relative inline-flex items-center justify-center p-0.5 mb-2 me-2 my-2 overflow-hidden text-sm font-medium text-gray-900 rounded-lg group bg-gradient-to-br from-green-400 to-blue-600 group-hover:from-green-400 group-hover:to-blue-600 hover:text-white dark:text-white focus:ring-4 focus:outline-none focus:ring-green-200 dark:focus:ring-green-800">
					<span
						class="relative px-5 py-2.5 transition-all ease-in duration-75 bg-white dark:bg-gray-900 rounded-md group-hover:bg-opacity-0">
						Create an employee </span>
				</button>
			</a>


		</div>
	</div>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.1.1/flowbite.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/tw-elements.umd.min.js"></script>

</body>
</html>