
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<!-- Brand -->
	<a class="navbar-brand" href="home">Gestion-RH</a>


	<!-- Links -->
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" href="EmployeController">Employés</a></li>



		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			href="#" id="navbardrop" data-toggle="dropdown"> Department </a>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="dept?action=forEach">forEach</a> <a
					class="dropdown-item" href="dept?action=if">if</a> <a
					class="dropdown-item" href="dept?action=choose">choose</a>

			</div></li>
	</ul>

	<!-- Right -->
	<ul class="navbar-nav ml-auto">

		<a class="navbar-brand"><span style="color: white">Hello <%
		out.println(session.getAttribute("name"));%>&emsp;</span></a>

		<a class="nav-link" href="logout"> <span style="color: white">Log
				out</span></a>



	</ul>

</nav>
