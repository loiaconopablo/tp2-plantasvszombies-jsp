/**
 * 
 */
package controllers;

import java.io.IOException;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.uqbar.commons.model.UserException;

import plantaszombies.Semilla;


/**
 * @author Mariano Varela, Pablo Loiacono.
 *
 */
public class SearchServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) 
			throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		
	//List<Semilla> semillas= //busca de la semilla;
//		request.getSession().setAttribute("libros", libros);
//		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	
	

}
