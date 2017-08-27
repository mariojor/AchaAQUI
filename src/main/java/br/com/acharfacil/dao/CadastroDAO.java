package br.com.acharfacil.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import br.com.acharfacil.model.Funcionario;
import br.com.acharfacil.model.Login;

//@NamedQuery(name="findAllCustomersWithName", query="SELECT l FROM Login l WHERE l.usuario =:usuario  and LIKE :custName")
@Repository
public class CadastroDAO implements CadastroDAOInterface {

	@PersistenceContext
	private EntityManager manager;

	public void cadastrar(Funcionario funcionario) {
		manager.persist(funcionario);
	}

	@Override
	public Funcionario existeUsuario(Login login) {
		String selectLogin = "Select l from Login l where l.usuario = :usuario and l.senha = :senha";
		String selectFuncionario = "Select f from Funcionario f where f.login_id = :id_login";
		
		System.out.println(selectLogin);
		System.out.println(selectFuncionario);
		
		TypedQuery<Login> queryLogin = manager.createQuery(selectLogin, Login.class);
		queryLogin.setParameter("usuario", login.getUsuario());
		queryLogin.setParameter("senha",login.getSenha());
        
		Login loginSR = queryLogin.getSingleResult();
        
		if(loginSR != null) {
	        TypedQuery<Funcionario> queryFuncionario = manager.createQuery(selectFuncionario, Funcionario.class);
	        queryFuncionario.setParameter("id_login", loginSR.getIdLogin());
	        
	        return queryFuncionario.getSingleResult();
         }
        
		return null;
	}

}
