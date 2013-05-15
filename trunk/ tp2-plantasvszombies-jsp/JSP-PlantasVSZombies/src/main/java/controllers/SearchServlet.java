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

import plantasVsZombies.AdministradorJardinZen;
import plantaszombies.Jardin;
import plantaszombies.JardinZen;
import plantaszombies.Partida;
import plantaszombies.Terreno;
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		String ordenadoPor = request.getParameter("ordenadoPor");

		//busca de la semilla;
		AdministradorJardinZen administrador = getAdministradorJardinZen(request);
		administrador.buscar(nombre, ordenadaPor);
	    
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected AdministradorJardinZen getAdministradorJardinZen(HttpServletRequest request) {
		if (request.getSession().getAttribute("adminAppModel") == null) {
			request.getSession().setAttribute("adminAppModel", new AdministradorJardinZen(new Partida(null, new JardinZen(new Jardin(2,2)))));
		}
		return (AdministradorJardinZen) request.getSession().getAttribute("adminAppModel");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	
	

}
