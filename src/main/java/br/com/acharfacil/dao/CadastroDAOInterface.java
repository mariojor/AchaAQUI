package br.com.acharfacil.dao;

import javax.persistence.NoResultException;

import br.com.acharfacil.model.Funcionario;
import br.com.acharfacil.model.Login;

public interface CadastroDAOInterface {

	public void cadastrar(Funcionario funcionario);

	public Funcionario existeUsuario(Login login)  throws NoResultException;
	
}
