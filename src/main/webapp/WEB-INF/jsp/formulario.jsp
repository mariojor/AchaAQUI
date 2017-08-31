<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.*"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page isELIgnored="false"%>
<%@page session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>ProjetoPessoal</title>
	<script src="/AcharFacil/resources/js/jquery.js"></script>
	<link rel="stylesheet" type="text/css" href="/AcharFacil/resources/css/estiloFormularioCadastro.css">
	<link rel="stylesheet" type="text/css" href="/AcharFacil/resources/css/bootstrap.css">
	<script src="/AcharFacil/resources/js/tether.min.js"></script>
	<script src="/AcharFacil/resources/js/bootstrap.js"></script>
	<script src="/AcharFacil/resources/js/scriptsLogin.js"></script>
</head>
<body>
	<div class="container">
		<form class="well form-horizontal" action="cadastroDeFuncionario" method="POST" >
			<fieldset>

				<!-- Form Name -->
				<legend>Cadastro</legend>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">E-Mail</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-envelope"></i>
							</span> 
							<input name="usuario" placeholder="E-Mail" class="form-control" type="text">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Senha</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-home"></i>
							</span>
							<input name="senha"  class="form-control" type="text">
						</div>
					</div>
				</div>
				
<!-- 					Text input -->
<!-- 				<div class="form-group"> -->
<!-- 					<label class="col-md-4 control-label">Repetir senha</label> -->
<!-- 					<div class="col-md-4 inputGroupContainer"> -->
<!-- 						<div class="input-group"> -->
<!-- 							<span class="input-group-addon"> -->
<!-- 								<i class="glyphicon glyphicon-home"></i> -->
<!-- 							</span> -->
<!-- 							<input name="repetirSenha"  class="form-control" type="text"> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
				
				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<button type="submit" class="btn btn-warning">
							Enviar <span class="glyphicon glyphicon-send"></span>
						</button>
					</div>
				</div>

			</fieldset>
		</form>
	</div>

</body>
</html>