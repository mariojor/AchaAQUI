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
					<button class="btn btn-sm btn-edit-perfil btn-block" type="button">Editar Perfil</button>
				</div>
			</div>
						<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
			  <li class="nav-item">
			    <a class="nav-link active" data-toggle="tab" href="#pessoal" role="tab">Pessoal</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#profissional" role="tab">Profissional</a>
			  </li>
			</ul>
			
			<!-- Tab panes -->
			<div class="tab-content">
				  <div class="tab-pane active" id="pessoal" role="tabpanel">
				  <div class="form-group row">
					<label for="nomePerfil" class="col-2 col-form-label">Nome</label>
					  <div class="col-10">
					    <input class="form-control" type="text"  id="nomePerfil" disabled>
					  </div>
					</div>
					<div class="form-group row">
					  <label for="cpfPerfil" class="col-2 col-form-label">CPF</label>
					  <div class="col-10">
					    <input class="form-control" type="text"  id="cpfPerfil" disabled>
					  </div>
					</div>
					<div class="form-group row">
					  <label for="emailPerfil" class="col-2 col-form-label">E-mail</label>
					  <div class="col-10">
					    <input class="form-control" type="email"  id="emailPerfil" disabled>
					  </div>
					</div>
					<div class="form-group row">
					  <label for="sexoPerfil" class="col-2 col-form-label">Sexo</label>
					  <div class="col-10">
					    <input class="form-control" type="text"  id="sexoPerfil" disabled>
					  </div>
					</div>
					<div class="form-group row">
					  <label for="dataNascimentoPerfil" class="col-2 col-form-label">Data Nasc</label>
					  <div class="col-10">
					    <input class="form-control" type="datetime-local"  id="dataNascimentoPerfil" disabled>
					  </div>
					</div>
					<div class="form-group row">
					  <label for="cidadePerfil" class="col-2 col-form-label">Cidade</label>
					  <div class="col-10">
					    <input class="form-control" type="text"  id="cidadePerfil" disabled/>
					  </div>
					</div>
					<div class="form-group row">
					  <label for="estadoPerfil" class="col-2 col-form-label">Estado</label>
					  <div class="col-10">
					    <input class="form-control" type="text"  id="estadoPerfil" disabled />
					  </div>
					</div>
				  </div>
			  
				  <div class="tab-pane" id="profissional" role="tabpanel">
				  
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