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
	
		<script src="/AcharFacil/resources/js/jquery.js"></script>
		<link rel="stylesheet" type="text/css" href="/AcharFacil/resources/css/estiloLogin.css">
		<link rel="stylesheet" type="text/css" href="/AcharFacil/resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="/AcharFacil/resources/css/bootstrap-grid.css">
		<link rel="stylesheet" type="text/css" href="/AcharFacil/resources/css/bootstrap-reboot.css">
		<script src="/AcharFacil/resources/js/tether.min.js"></script>
		<script src="/AcharFacil/resources/js/bootstrap.js"></script>
		<script src="/AcharFacil/resources/js/scriptsLogin.js"></script>
		
		
	</head>
	<body>
	
	<div class="container">
	    <div class="row">
	        <div class="col-md-3 col-md-offset-4">
	            <div class="account-box">
	                <div class="logo ">
	                    <img src="http://placehold.it/90x38/fff/6E329D&text=LOGO" alt=""/>
	                </div>
	                <label>${erroLogin}</label>
	                <form class="form-signin" id="formTeste" action="efetuaLogin" method="POST">
		                <div class="form-group">
		                    <input type="text" name="usuario" class="form-control" placeholder="Usuario" required autofocus />
		                </div>
		                <div class="form-group">
		                    <input type="password" name="senha" class="form-control" placeholder="Senha" required />
		                </div>
		                <label class="checkbox">
		                    <input type="checkbox" value="remember-me" />
		                    Keep me signed in
		                </label>
		                <button class="btn btn-lg btn-block purple-bg" type="submit">
		                    Sign in</button>
	                </form>
	                <a class="forgotLnk" href="">I can't access my account</a>
	                <div class="or-box">
	                    <span class="or">OR</span>
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
	                        <div class="col-md-12 row-block">
	                            <a href="formulario"  class="btn btn-primary btn-block">Cadastrar-se</a>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	</body>
</html>