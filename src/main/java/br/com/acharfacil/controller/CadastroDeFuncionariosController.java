package br.com.acharfacil.controller;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.acharfacil.dao.CadastroDAOInterface;
import br.com.acharfacil.model.Endereco;
import br.com.acharfacil.model.Funcionario;
import br.com.acharfacil.model.Login;


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
	public String cadastroDeFuncionario(Model mv, Funcionario funcionario, Endereco endereco, Login login) {

			Endereco end = new Endereco();
			end.setCidade(endereco.getCidade());
			end.setCodigoPostal(endereco.getCodigoPostal());
			
			Login lg = new Login();
			lg.setSenha(login.getSenha());
			lg.setUsuario(login.getUsuario());
			
			funcionario.setEndereco(end);
			funcionario.setLogin(lg);
			
			dao.cadastrar(funcionario);
		return "sucesso";

	}
	
	@RequestMapping("/efetuaLogin")
	  public String efetuaLogin(Login login, HttpSession session) {
			
		System.out.println(login.getSenha());
		System.out.println(login.getUsuario());
		
		Funcionario funcionario = dao.existeUsuario(login);
		
		if(funcionario != null) {
	      // usuario existe, guardaremos ele na session
	      session.setAttribute("usuarioLogado", funcionario);
	      return "menu";
	    }
	    // ele errou a senha, voltou para o formulario
	    return "index";
	  }

}
