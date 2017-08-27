package br.com.acharfacil.dao;

import javax.persistence.NoResultException;

import br.com.acharfacil.model.Funcionario;
import br.com.acharfacil.model.Login;

public interface CadastroDAOInterface {

	void cadastrar(Funcionario funcionario);

	Funcionario existeUsuario(Login login)  throws NoResultException;
	
}
