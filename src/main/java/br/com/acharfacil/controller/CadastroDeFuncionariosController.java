package br.com.acharfacil.controller;

import java.util.Calendar;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.acharfacil.dao.CadastroDAOInterface;
import br.com.acharfacil.model.Funcionario;
import br.com.acharfacil.model.Login;
import br.com.acharfacil.util.TextoDaAplicacao;
import br.com.acharfacil.util.Validacao;

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
	public String cadastroDeFuncionario(Model md, Login login) {

		if (Validacao.isValidateEmail(login.getUsuario()) && Validacao.quantidadeDeCaracteresSenha(login.getSenha())) {

			try {

				Funcionario funcionarioEncontrado = dao.existeUsuario(login);

				md.addAttribute("cadastroExiste", TextoDaAplicacao.MSG_CADASTRO_JA_EXISTE);
				return "formulario";

			} catch (NoResultException e) {

				if(Validacao.isValidateEmail(login.getUsuario()) && Validacao.quantidadeDeCaracteresSenha(login.getSenha()) ) {
				
					Funcionario funcionario = new Funcionario();
					Calendar dataDeCadastro = Calendar.getInstance();
					funcionario.setDataDeCadastro(dataDeCadastro);
	
					funcionario.setLogin(login);
	
					dao.cadastrar(funcionario);
	
					md.addAttribute("cadastroSucesso", TextoDaAplicacao.MSG_CADASTRO_SUCESSO);
					return "login";
				}	

			}
		}else {
			md.addAttribute("emailErradoOuSenha", TextoDaAplicacao.MSG_CADASTRO_EMAIL_SENHA_INVALIDOS);
		}

		return "formulario";

	}

	@RequestMapping("/efetuaLogin")
	public String efetuaLogin(Login login, HttpSession session) {

		try {
			Funcionario funcionario = dao.existeUsuario(login);

			if (funcionario != null) {
				// usuario existe, guardaremos ele na session
				session.setAttribute("usuarioLogado", funcionario);
				return "perfil";
			}

		} catch (NoResultException e) {
			session.setAttribute("erroLogin", TextoDaAplicacao.MSG_ERRO_LOGIN);
		}
		// ele errou a senha, voltou para o formulario
		return "login";
	}

}
