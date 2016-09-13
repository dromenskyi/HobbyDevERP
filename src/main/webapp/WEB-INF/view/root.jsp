<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<c:set var="app" value="${pageContext.servletContext.contextPath}" />
<sec:authentication property="name" var="username" />

<!DOCTYPE html>
<html lang="en">
	<head>
		<c:import url="/imports/head?pageTitle=Home"></c:import>
	</head>
	
	<body data-page="root">
		<div class="container">
			<c:import url="/imports/mainNav?root=true"></c:import>
			<header class="hd-main-header">
				<h3><span class="js-hd-model-user-fullname"></span></h3>
			</header>
			<main>
				<div class="row">
					<section class="col-xs-6 col-sm-4" id="js-hd-user-image">
						<img class="js-hd-model-user-image hd-user-image-large" src="" />
					</section>
					
					<div class="clearfix visible-xs-block"></div>
					
					<section class="col-sm-4" id="js-hd-user-info">
						<header><h4>Information</h4></header>
						<p><strong>Username</strong>: <span class="js-hd-model-user-username"></span></p>
						<p><strong>First name</strong>: <span class="js-hd-model-user-firstname"></span></p>
						<p><strong>Middle name</strong>: <span class="js-hd-model-user-middlename"></span></p>
						<p><strong>Last name</strong>: <span class="js-hd-model-user-lastname"></span></p>
						<p><strong>E-mail</strong>: <span class="js-hd-model-user-email"></span></p>
						<p><strong>Corporate phone</strong>: <span class="js-hd-model-user-corporate-number"></span></p>
						<p><strong>Start of work</strong>: <span class="js-hd-model-user-start-of-work"></span></p>
						<p><strong>Line manager</strong>: <span class="js-hd-model-user-linemanager"></span></p>
						<p><strong>Subordinates count</strong>: <span class="js-hd-model-user-subs-count"></span></p>
					</section>
					
					<section class="col-sm-4" id="js-hd-user-personal-info">
						<header><h4>Personal Information</h4></header>
						<p><strong>Birthday</strong>: <span class="js-hd-model-user-birthday"></span></p>
						<p><strong>Personal phone</strong>: <span class="js-hd-model-user-personal-phone"></span></p>
						<p><strong>Skype</strong>: <span class="js-hd-model-user-skype"></span></p>
					</section>
				</div>
			</main>
			
			<c:import url="/imports/mainFooter"></c:import>
		</div>

		<div class="hd-modals"></div>

		<c:import url="/imports/scripts"></c:import>
		<script src="${app}/res/app/js/pages/root/index.js"></script>
	</body>
</html>