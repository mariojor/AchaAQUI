package br.com.acharfacil.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.acharfacil.model.Funcionario;

@Repository
public class CadastroDAO implements CadastroDAOInterface{
	
	@PersistenceContext
	private EntityManager manager;

	public void cadastrar(Funcionario funcionario) {
		manager.persist(funcionario);
	}
	

}
