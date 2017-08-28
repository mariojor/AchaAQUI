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
	<script src="/AcharFacil/resources/js/bootstrap.js"></script>
	<script src="/AcharFacil/resources/js/scriptsFormulario.js"></script>
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
								<option value="Rio Branco">Rio Branco</option>			
								<option value="Alagoas">Alagoas</option>					
								<option value="Amapá">Amapá</option>					
								<option value="Amazonas">Amazonas</option>				
								<option value="Bahia">Bahia</option>					
								<option value="Ceará">Ceará</option>				
								<option value="Distrito Federal	">Distrito Federal</option>		
								<option value="Espírito Santo">Espírito Santo</option>			
								<option value="Goiás">Goiás</option>				
								<option value="Maranhão	">Maranhão</option>				
								<option value="Mato Grosso	">Mato Grosso</option>				
								<option value="Mato Grosso do Sul">Mato Grosso do Sul</option>		
								<option value="Minas Gerais	">Minas Gerais</option>			
								<option value="Paraná">Paraná</option>					
								<option value="Paraíba">Paraíba</option>					
								<option value="Pará	">Pará</option>					
								<option value="Pernambuco">Pernambuco</option>				
								<option value="Piauí">Piauí</option>					
								<option value="Rio de Janeiro">Rio de Janeiro</option>			
								<option value="Rio Grande do Norte">Rio Grande do Norte</option>	
								<option value="Rio Grande do Sul">Rio Grande do Sul</option>		
								<option value="Rondônia		">Rondônia</option>				
								<option value="Roraima">Roraima</option>					
								<option value="Santa Catarina">Santa Catarina</option>			
								<option value="Sergipe">Sergipe</option>					
								<option value="São Paulo">São Paulo</option>				
								<option value="Tocantins">Tocantins</option>
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
				
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Login</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-home"></i>
							</span>
							<input name="usuario"  class="form-control" type="text">
						</div>
					</div>
				</div>
				
					<!-- Text input-->
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
				
					<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Repetir senha</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-home"></i>
							</span>
							<input name="repetirSenha"  class="form-control" type="text">
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