package br.com.acharfacil.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validacao {

	public static final int QUANTIDADE_CARACTERES_SENHA = 6;  
	
	public static boolean isValidateEmail(String email) {  
	    Pattern pattern = Pattern.compile("^[\\w-]+(\\.[\\w-]+)*@([\\w-]+\\.)+[a-zA-Z]{2,7}$");   
	    Matcher matcher = pattern.matcher(email);   
	    return matcher.find();   
	}   
	
	public static boolean quantidadeDeCaracteresSenha(String valor) {  
	      
		if(valor.length() >= QUANTIDADE_CARACTERES_SENHA) {
			return Boolean.TRUE;
		}
		
	    return Boolean.FALSE;   
	}   
	
	
	
}
