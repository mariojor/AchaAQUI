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
	<body id="wiew-login">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titulo-inicial">
						<h1><span class="titulo-login">SOS - Babá</span></h1>
					</div>
					<label class=" erro-login badge badge-danger">${erroLogin}</label>
					<form class="form-signin" action="efetuaLogin" method="POST"> 
					
						<div class="input-group">
							<input type="text" name="usuario" class="form-control" placeholder="Usuario" required autofocus />
						</div>
						<div class="form-group">
							<input type="password" name="senha" class="form-control" placeholder="Senha" required />
						</div>
						<label class="custom-control custom-checkbox"> 
							<input type="checkbox" class="custom-control-input"> 
							<span class="custom-control-indicator"></span>
							<span class="custom-control-description text-conectado">Mantenha-me conectado</span>
						</label>
						<button class="btn btn-lg btn-entrar btn-block" type="submit">Entrar</button>
					</form>
	
					<a class="forgotLink" href="">Não consigo acessar minha conta</a>
					<div class="or-box row-block text-alinhar-centro">
						<span class="ou-color">OU</span>
					</div>
					<div class="or-box row-block">
						<div class="row">
							<div class="col-md-6 row-block">
								<a href="" class="btn btn-facebook btn-block">Facebook</a>
							</div>
							<div class="col-md-6 row-block">
								<a href="" class="btn btn-google btn-block">Google</a>
							</div>
						</div>
					</div>
					<div class="or-box row-block">
						<div class="row">
							<div class="col row-block">
								<a href="formulario" class="btn btn-cadastrar btn-block">Cadastre-se</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>