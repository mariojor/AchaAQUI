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
	<link rel="stylesheet" type="text/css" href="/AcharFacil/css/estilo.css">
	<link rel="stylesheet" type="text/css" href="/AcharFacil/css/bootstrap.css">
	<script src="/AcharFacil/js/bootstrap.js"></script>
	<script src="/AcharFacil/js/jquery.js"></script>
	<script src="/AcharFacil/js/scripts.js"></script>
</head>
<body>
	<div class="container">
		<form class="well form-horizontal" action="cadastroDeFuncionario"
			method="post" id="contact_form">
			<fieldset>

				<!-- Form Name -->
				<legend>Cadastro</legend>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Nome</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-user"></i>
							</span> 
							<input name="nome" placeholder="Nome" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Telefone</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-user"></i>
							</span> 
							<input name="telefone" placeholder="(99)99999-9999" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">E-Mail</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-envelope"></i>
							</span> 
							<input name="email" placeholder="E-Mail" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">CPF</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-earphone"></i>
							</span> 
							<input name="cpf" placeholder="999.999.999-99" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Idade</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-home"></i>
							</span> 
							<input name="idade" placeholder="Idade" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Cidade</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-home"></i>
							</span> 
							<input name="cidade" placeholder="Cidade" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Select Basic -->

				<div class="form-group">
					<label class="col-md-4 control-label">Estado</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-list"></i>
							</span> 
							<select name="estado" class="form-control selectpicker">
								<option value=" ">Selecione seu estado</option>
								<!-- falta lista -->
							</select>
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Codigo Postal</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-home"></i>
							</span>
							<input name="codigoPostal" placeholder="99999-999" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- radio checks
				<div class="form-group">
					<label class="col-md-4 control-label">Do you have hosting?</label>
					<div class="col-md-4">
						<div class="radio">
							<label> <input type="radio" name="hosting" value="yes" />
								Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="hosting" value="no" />
								No
							</label>
						</div>
					</div>
				</div>  -->

				<!-- Text area 

				<div class="form-group">
					<label class="col-md-4 control-label">Sobre você</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-pencil"></i>
							</span>
							<textarea class="form-control" name="comment" placeholder="Sobre você"></textarea>
						</div>
					</div>
				</div> -->

				<!-- Success message -->
				<div class="alert alert-success" role="alert" id="success_message">
					Sucesso <i class="glyphicon glyphicon-thumbs-up"></i> Sejá bem vindo!!!.
				</div>

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