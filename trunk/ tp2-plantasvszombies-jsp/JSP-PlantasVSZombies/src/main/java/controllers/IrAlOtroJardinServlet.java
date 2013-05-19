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
//public class IrAlOtroJardinServlet extends HttpServlet {
public class IrAlOtroJardinServlet extends SearchServlet{	
	/**
	 * 
	 */
	//private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {

		AdministradorJardinZen administrador = getAdministradorJardinZen(request);
		administrador.irAlOtroJardin();
		
	    
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

//	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
//			throws ServletException, IOException {
//		this.doPost(request, response);
//	}
	
	

}