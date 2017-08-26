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
	
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/estilo.css"/>">
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.css"/>">
		<script src="<c:url value="/js/bootstrap.js"/>"></script>
		<script src="<c:url value="/js/jquery.js"/>"></script>
		<script src="<c:url value="/js/scripts.js"/>"></script>
		
	</head>
	<body>
	
	
         <form action="formulario" method="get">
	 		<p>Sejam bem vindos ao melhor programa para busca de trabalho</p>
			<button type="submit">Se cadastrar</button>	
		</form>
	</body>
</html>