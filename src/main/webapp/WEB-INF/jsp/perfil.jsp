<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.*"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page isELIgnored="false"%>
<%@page session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<title>SOS Babá</title>
		
		<link rel="stylesheet" type="text/css" href="/AcharFacil/resources/css/normalize.css">
		<script src="/AcharFacil/resources/js/jquery.js"></script>
		<link rel="stylesheet" type="text/css" href="/AcharFacil/resources/css/style.css">
		<link rel="stylesheet" type="text/css" href="/AcharFacil/resources/css/bootstrap.min.css">
		<script src="/AcharFacil/resources/js/tether.min.js"></script>
		<script src="/AcharFacil/resources/js/bootstrap.min.js"></script>
		<script src="/AcharFacil/resources/js/scripts.js"></script>
	
	</head>

<body>
	<div id="wiew-perfil">
	    <div class="container">
             <div class="titulo-inicial">
				<h1><span class="titulo-perfil">Meu Perfil</span></h1>
			</div>
			
			<div class="row">
				<div class="col"></div>
				<div class="col">
					<button class="btn btn-sm btn-edit-perfil btn-block" type="button" onclick="validarSenha()">Editar Perfil</button>
				</div>
			</div>
						<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
			  <li class="nav-item">
			    <a class="nav-link active" data-toggle="tab" href="#home" role="tab">Pessoal</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#profile" role="tab">Profissional</a>
			  </li>
			</ul>
			
			<!-- Tab panes -->
			<div class="tab-content">
			  <div class="tab-pane active" id="home" role="tabpanel">
			  <div class="form-group row">
				<label for="example-text-input" class="col-2 col-form-label">Text</label>
				  <div class="col-10">
				    <input class="form-control" type="text" value="Artisanal kale" id="example-text-input">
				  </div>
				</div>
				<div class="form-group row">
				  <label for="example-search-input" class="col-2 col-form-label">Search</label>
				  <div class="col-10">
				    <input class="form-control" type="search" value="How do I shoot web" id="example-search-input">
				  </div>
				</div>
				<div class="form-group row">
				  <label for="example-email-input" class="col-2 col-form-label">Email</label>
				  <div class="col-10">
				    <input class="form-control" type="email" value="bootstrap@example.com" id="example-email-input">
				  </div>
				</div>
				<div class="form-group row">
				  <label for="example-url-input" class="col-2 col-form-label">URL</label>
				  <div class="col-10">
				    <input class="form-control" type="url" value="https://getbootstrap.com" id="example-url-input">
				  </div>
				</div>
				<div class="form-group row">
				  <label for="example-tel-input" class="col-2 col-form-label">Telephone</label>
				  <div class="col-10">
				    <input class="form-control" type="tel" value="1-(555)-555-5555" id="example-tel-input">
				  </div>
				</div>
				<div class="form-group row">
				  <label for="example-password-input" class="col-2 col-form-label">Password</label>
				  <div class="col-10">
				    <input class="form-control" type="password" value="hunter2" id="example-password-input">
				  </div>
				</div>
			  </div>
			  
			  <div class="tab-pane" id="profile" role="tabpanel">
			  
			  <div class="form-group row">
				  <label for="example-month-input" class="col-2 col-form-label">Month</label>
				  <div class="col-10">
				    <input class="form-control" type="month" value="2011-08" id="example-month-input">
				  </div>
				</div>
				<div class="form-group row">
				  <label for="example-week-input" class="col-2 col-form-label">Week</label>
				  <div class="col-10">
				    <input class="form-control" type="week" value="2011-W33" id="example-week-input">
				  </div>
				</div>
				<div class="form-group row">
				  <label for="example-time-input" class="col-2 col-form-label">Time</label>
				  <div class="col-10">
				    <input class="form-control" type="time" value="13:45:00" id="example-time-input">
				  </div>
				</div>
				<div class="form-group row">
				  <label for="example-color-input" class="col-2 col-form-label">Color</label>
				  <div class="col-10">
				    <input class="form-control" type="color" value="#563d7c" id="example-color-input">
				  </div>
				</div>
					<div class="form-group row">
				  <label for="example-number-input" class="col-2 col-form-label">Number</label>
				  <div class="col-10">
				    <input class="form-control" type="number" value="42" id="example-number-input">
				  </div>
				</div>
				<div class="form-group row">
				  <label for="example-datetime-local-input" class="col-2 col-form-label">Date and time</label>
				  <div class="col-10">
				    <input class="form-control" type="datetime-local" value="2011-08-19T13:45:00" id="example-datetime-local-input">
				  </div>
				</div>
				<div class="form-group row">
				  <label for="example-date-input" class="col-2 col-form-label">Date</label>
				  <div class="col-10">
				    <input class="form-control" type="date" value="2011-08-19" id="example-date-input">
				  </div>
				</div>
			  </div>
			</div>
        </div>
	
	           
	</div>
</body>
</html>