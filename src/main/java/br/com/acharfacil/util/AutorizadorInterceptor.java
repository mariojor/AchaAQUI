package br.com.acharfacil.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter{

	 @Override
	  public boolean preHandle(HttpServletRequest request, 
	      HttpServletResponse response,
	      Object controller) throws Exception {

	      String uri = request.getRequestURI();
	      if(uri.endsWith("show") || 
	         uri.endsWith("efetuaLogin") || 
	         uri.contains("resources")||
	         uri.contains("formulario")||
	         uri.contains("login")|| 
	         uri.contains("cadastroDeFuncionario")){
	        return true;
	      }
	      
	      if(request.getSession().getAttribute("usuarioLogado") != null) {
	        return true;
	      }
	      
	      response.sendRedirect("show");
	      return false;
	  }
	 
	
}
