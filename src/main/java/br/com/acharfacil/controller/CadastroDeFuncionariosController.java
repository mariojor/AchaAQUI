package br.com.acharfacil.controller;

import java.util.Calendar;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.acharfacil.dao.CadastroDAOInterface;
import br.com.acharfacil.model.Funcionario;
import br.com.acharfacil.model.Login;

@Controller
@Transactional
public class CadastroDeFuncionariosController {

	@Autowired
	CadastroDAOInterface dao;

	@RequestMapping("/show")
	public String show() {
		return "login";

	}

	@RequestMapping("/formulario")
	public String formulario() {
		return "formulario";

	}

	@RequestMapping("/cadastroDeFuncionario")
	public String cadastroDeFuncionario(Login login) {

		Funcionario funcionario = new Funcionario();
		
		Calendar dataDeCadastro = Calendar.getInstance();
		funcionario.setDataDeCadastro(dataDeCadastro);
		funcionario.setLogin(login);
		funcionario.setEmail(login.getUsuario());

		dao.cadastrar(funcionario);
		return "login";

	}

	@RequestMapping("/efetuaLogin")
	public String efetuaLogin(Login login, HttpSession session) {

		try {
			Funcionario funcionario = dao.existeUsuario(login);

			if (funcionario != null) {
				// usuario existe, guardaremos ele na session
				session.setAttribute("usuarioLogado", funcionario);
				return "menu";
			}
			
		} catch (NoResultException e) {
			session.setAttribute("erroLogin", "Erro ao realizar o login");
		}
		// ele errou a senha, voltou para o formulario
		return "login";
	}

}
