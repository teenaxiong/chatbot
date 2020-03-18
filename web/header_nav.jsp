<%-- 
    Document   : header_nav
    Created on : Mar 17, 2020, 11:35:54 PM
    Author     : teena
--%>
<!doctype html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
	<title>Chatbot</title>
</head>
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
