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
	<div id="wiew-formulario-cadastro">
			<div class="container">
				<div class="row">
				<div class="col-md-12">
					<div class="titulo-inicial">
						<h1><span class="titulo-cadastro">Cadastro</span></h1>
					</div>
					
					<span class="badge badge-pill badge-danger">${cadastroExiste}</span>
					<form id="form-cadastro" class="form-signin" action="cadastroDeFuncionario" method="post">
						<div class="form-group">
							<input name="usuario" placeholder="E-Mail" class="form-control" type="text" required autofocus>
						</div>
						<div class="form-group">
							<input id="ip-senha" name="senha" placeholder="Senha" class="form-control" type="password" required>
						</div>
						<div class="form-group">
							<input id="ip-rsenha" placeholder="Repetir senha" class="form-control" type="password" required>
						</div>

						<button class="btn btn-lg btn-entrar btn-block" type="button" onclick="validarSenha()">Confirmar</button>
					</form>
				</div>
				
				<div class="col-md-1">
					<div id="accordion" role="tablist" aria-multiselectable="false">
					  <div class="card">
					    <div class="card-header" role="tab" id="headingOne">
					      <h5 class="mb-0">
					        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					         	Leia antes de cadastrar-se.
					        </a>
					      </h5>
					    </div>
					
					    <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne">
					      <div class="card-block">
					       		Não dê sua senha para ninguem.
					      </div>
					    </div>
					  </div>
				  </div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>