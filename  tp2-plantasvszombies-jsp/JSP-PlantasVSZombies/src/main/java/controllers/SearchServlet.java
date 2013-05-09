/**
 * 
 */
package controllers;

import java.io.IOException;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.uqbar.commons.model.UserException;


/**
 * @author Mariano Varela, Pablo Loiacono.
 *
 */
public class SearchServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) 
			throws ServletException, IOException {
		String titulo = request.getParameter("nombre");
		
//		Collection<Libro> libros = Biblioteca.getInstance().buscar(titulo);
//		request.getSession().setAttribute("libros", libros);
//		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	
	

}
