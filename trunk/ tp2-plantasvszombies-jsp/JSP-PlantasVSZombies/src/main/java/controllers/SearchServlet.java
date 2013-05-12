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
		AdministradorJardinZen jardinZen = new AdministradorJardinZen(new Partida(null, new JardinZen(new Jardin(2,2))));
		String nombre = request.getParameter("nombre");
		
	    List<Semilla> semillas = jardinZen.getJardinZen().buscarEnTerrestre(nombre); //busca de la semilla;
		request.getSession().setAttribute("semillas", semillas);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		this.doPost(request, response);
	}
	
	

}
