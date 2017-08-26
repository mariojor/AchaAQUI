package br.com.acharfacil.controller;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.acharfacil.dao.CadastroDAOInterface;
import br.com.acharfacil.model.Endereco;
import br.com.acharfacil.model.Funcionario;


@Controller
@Transactional
public class CadastroDeFuncionariosController {
	
	@Autowired
	CadastroDAOInterface dao;
	
	@RequestMapping("/show")
	public String show() {
		return "index";

	}

	@RequestMapping("/formulario")
	public String formulario() {
		return "formulario";

	}

	@RequestMapping("/cadastroDeFuncionario")
	public String cadastroDeFuncionario(Model mv, Funcionario funcionario, Endereco endereco) {

			Endereco end = new Endereco();
			end.setCidade(endereco.getCidade());
			end.setCodigoPostal(endereco.getCodigoPostal());
			
			funcionario.setEndereco(end);
			dao.cadastrar(funcionario);
		return "sucesso";

	}



}
