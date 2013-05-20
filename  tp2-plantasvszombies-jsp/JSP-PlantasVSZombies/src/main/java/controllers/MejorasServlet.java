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
import plantaszombies.Mejora;
import plantaszombies.Partida;
import plantaszombies.Terreno;
import plantaszombies.Semilla;


/**
 * @author Mariano Varela, Pablo Loiacono.
 *
 */
public class MejorasServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) 
			throws ServletException, IOException {
		
		//levanto los parametros
		String nombre = request.getParameter("nombre");
		
		//delego en el dominio
		//getAdministradorJardinZen(request).buscarYSetearSemilla(nombre);
		
		
		//genero la vista
		request.getRequestDispatcher("mejoras.jsp").forward(request, response);
		
		
//		AdministradorJardinZen jardinZen = new AdministradorJardinZen(new Partida(null, new JardinZen(new Jardin(2,2))));
//		// Adapta los par�metros del request
//		//String nombre = request.getParameter("nombre");
//		//Preguntar como obtener el valor de un radial
//		
//		// Delegar en los objetos que efectivamente procesan el pedido
//	    List<Mejora> semillas = jardinZen.getJardinZen().getMejorasPredefinidas(); //busca las mejoras
//	    
//	    // Guardo el estado que quiero comunicar a la vista
//		request.getSession().setAttribute("mejoras", semillas);
//		
//		// Delego a la vista
//		request.getRequestDispatcher("mejoras.jsp").forward(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		this.doPost(request, response);
	}
	
	protected AdministradorJardinZen getAdministradorJardinZen(HttpServletRequest request) {
		if (request.getSession().getAttribute("adminAppModel") == null) {
			request.getSession().setAttribute("adminAppModel", new AdministradorJardinZen(new Partida(null, new JardinZen(new Jardin(2,2)))));
		
		}
		return (AdministradorJardinZen) request.getSession().getAttribute("adminAppModel");
	}

}
