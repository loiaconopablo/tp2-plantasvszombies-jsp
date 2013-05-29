/**
 * 
 */
package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import plantasVsZombies.AdministradorJardinZen;

/**
 * @author Mariano Varela, Pablo Loiacono.
 *
 */
public class IrAlOtroJardinServlet extends SearchServlet{	

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