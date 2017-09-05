package br.com.acharfacil.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import br.com.acharfacil.model.Funcionario;
import br.com.acharfacil.model.Login;
import br.com.acharfacil.util.TextoDaAplicacao;

@Repository
public class CadastroDAO implements CadastroDAOInterface {

	@PersistenceContext
	private EntityManager manager;

	public String cadastrar(Funcionario funcionario) {
		try {
			if (existeUsuario(funcionario.getLogin()) != null) {
				manager.persist(funcionario);
				return TextoDaAplicacao.MSG_CADASTRO_SUCESSO;
			}
			
		}catch (Exception e) {
			return TextoDaAplicacao.MSG_CADASTRO_ERRO;
		}
		
		return TextoDaAplicacao.MSG_CADASTRO_JA_EXISTE;
	}

	@Override
	public Funcionario existeUsuario(Login login) throws NoResultException  {
		String selectLogin = "Select l from Login l where l.usuario = :usuario and l.senha = :senha";
		
		TypedQuery<Login> queryLogin = manager.createQuery(selectLogin, Login.class);
		queryLogin.setParameter("usuario", login.getUsuario());
		queryLogin.setParameter("senha",login.getSenha());
        
		
		Login loginSR = queryLogin.getSingleResult();
        
		if(loginSR != null) {
			Funcionario funcionario = existeFuncionario(loginSR.getIdLogin());
	        return funcionario;
         }
        
		return null;
	}

	private Funcionario existeFuncionario(int idLogin) {
		return (Funcionario) manager.createQuery("Select f from Funcionario f join f.login l where l.idLogin = :id_login").setParameter("id_login", idLogin).getSingleResult();
	}

}
