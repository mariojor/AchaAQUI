<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	
		<link rel="stylesheet" type="text/css" href="/AcharFacil/resources/css/estiloLogin.css">
		<link rel="stylesheet" type="text/css" href="/AcharFacil/resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="/AcharFacil/resources/css/bootstrap-grid.css">
		<link rel="stylesheet" type="text/css" href="/AcharFacil/resources/css/bootstrap-reboot.css">
		<script src="/AcharFacil/resources/js/bootstrap.js"></script>
		<script src="/AcharFacil/resources/js/jquery.js"></script>
		<script src="/AcharFacil/resources/js/scripts.js"></script>
		
	</head>
	<body>
		<div class="container">
		  <div class="row">
		
		    <div class="main">
		
		      <h3>Faça o login, ou <a href="#">Inscreva-se</a></h3>
		      <div class="row">
		        <div class="col-xs-6 col-sm-6 col-md-6">
		          <a href="#" class="btn btn-lg btn-primary btn-block">Facebook</a>
		        </div>
		        <div class="col-xs-6 col-sm-6 col-md-6">
		          <a href="#" class="btn btn-lg btn-info btn-block">Google</a>
		        </div>
		      </div>
		      <div class="login-or">
		        <hr class="hr-or">
		        <span class="span-or">or</span>
		      </div>
			 	<label>${erroLogin}</label>
		      <form role="form" action="efetuaLogin" method="POST">
		        <div class="form-group">
		          <label for="usuario">Nome de usuário</label>
		          <input type="text" name="usuario" class="form-control" id="usuario">
		        </div>
		        <div class="form-group">
		          <a class="pull-right" href="#">Esqueceu a senha?</a>
		          <label for="senha">Senha</label>
		          <input type="password" name="senha" class="form-control" id="senha">
		        </div>
		        <div class="checkbox pull-right">
		          <label>
		            <input type="checkbox">
		            Lembrar-me </label>
		        </div>
		        <button type="submit" class="btn btn btn-primary">
		          Entrar
		        </button>
		      </form>
		    </div>
		  </div>
		</div>	
	</body>
</html>