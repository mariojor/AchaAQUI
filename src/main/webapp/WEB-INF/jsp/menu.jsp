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

<script>
$(document).ready(function() {
	var strg = "${usuarioLogado.nome}";
	var nomeInicial = strg.split(' ')[0];
	$("#nome_foto").html(nomeInicial);
});
</script>

<body>
    <div class="container" style="margin-top:12px;">
        <div class="prog-page">
            <div class="header-title header-btn">
                <div class="header-info">
                    <h2>Informação do Perfil</h2>
                </div>
                <div class="header-btn-edit">
                    <a href="#" type="button" style="position: relative; top: 31px">Editar Perfil</a>
                </div>
            </div>

            <div class="prof-page-info">
                <div class="row">
                    <div class="col-md-3">

                        <div class="prof-img">
                            <div class="img-title">
                                <h2 id="nome_foto"></h2>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-9">

                        <div class="prof-info">

                            <div class="info">
                                <label>Nome: </label><span>${usuarioLogado.nome}</span></div>
                            <div class="info">
                                <label>Data de Nascimento: </label><span><fmt:formatDate pattern = "dd-MM-yyyy" type="date" value = "${usuarioLogado.dataDeCadastro.time}" /></span></div>
                            <div class="info">
                                <label>Email: </label> <span>${usuarioLogado.email}</span></div>
                            <div class="info">
                                <label>Estado: </label> <span>${usuarioLogado.endereco.estado}</span></div>
                            <div class="info">
                                <label>Cidade: </label> <span>${usuarioLogado.endereco.cidade}</span></div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>
</html>