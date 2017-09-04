
function validarSenha() {
	senha = document.getElementById('ip-senha').value;
	rsenha = document.getElementById('ip-rsenha').value;
	if (senha != rsenha) {
		$("#ip-senha").focus();
		$("#senhasDiferentes").show();
		return true;
	} else {
		$("#form-cadastro").submit();
		return false;
	}
}

$('#myTab a').click(function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	})