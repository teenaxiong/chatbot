<%-- 
    Document   : navigation
    Created on : Mar 31, 2020, 8:56:31 PM
    Author     : teena
--%>
<body>
	<div class="wrapper">
		<nav class="sidebar" id="mySidebar">
		  <a href="#" class="closebtn" onclick="closeNav()">x</a>
			<ul class="list-unstyled components">
				<li class="active">
					<a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">need it or not??</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li>
							<a href="#">home1</a>
						</li>
						<li>
							<a href="#">home2</a>
						</li>
						<li>
							<a href="#">home3</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="index.jsp">Home</a>
				</li>
				<li>
					<a href="about.jsp">About</a>
				</li>
				<li>
					<a href="chat.jsp">Ask about the weather</a>
				</li>
				<li>
					<a href="contact.jsp">Contact Us</a>
				</li>
			</ul>
		</nav>
		<div class="content" id="mainBody">
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				<button type="button" id="sidebarCollapse" class="btn btn-default"  onclick="openNav()">
					<i class="fa fa-align-justify"></i>
				</button>
				<h1 class="title-header">Chatbot</h1>
			</nav>
