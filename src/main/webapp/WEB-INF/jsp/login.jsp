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

<title>ProjetoPessoal</title>

<script src="/AcharFacil/resources/js/jquery.js"></script>
<link rel="stylesheet" type="text/css"
	href="/AcharFacil/resources/css/style.css">
<link rel="stylesheet" type="text/css"
	href="/AcharFacil/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="/AcharFacil/resources/css/bootstrap-grid.css">
<link rel="stylesheet" type="text/css"
	href="/AcharFacil/resources/css/bootstrap-reboot.css">
<script src="/AcharFacil/resources/js/tether.min.js"></script>
<script src="/AcharFacil/resources/js/bootstrap.js"></script>
<script src="/AcharFacil/resources/js/scripts.js"></script>


</head>
<body>

	<div id="wiew-login" class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="logo ">
					<img src="http://placehold.it/90x38/fff/6E329D&text=LOGO" alt="" />
				</div>
				<label>${erroLogin}</label>
				<form class="form-signin" id="formTeste" action="efetuaLogin"
					method="POST">
					<div class="input-group">
<!-- 						<div class="input-group-addon">@</div> -->
						<input type="text" name="usuario" class="form-control"
							placeholder="Usuario" required autofocus />
					</div>
					<div class="form-group">
						<input type="password" name="senha" class="form-control"
							placeholder="Senha" required />
					</div>
					<label class="custom-control custom-checkbox"> <input
						type="checkbox" class="custom-control-input"> <span class="custom-control-indicator"></span> 
						<span class="custom-control-description text-conectado">Mantenha-me conectado</span>
					</label>
					<button class="btn btn-lg btn-entrar btn-block" type="submit">Entrar</button>
				</form>

				<a class="forgotLink" href="">Não consigo acessar minha conta</a>
				<div class="or-box row-block text-alinhar-centro">
					<span>OU</span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
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