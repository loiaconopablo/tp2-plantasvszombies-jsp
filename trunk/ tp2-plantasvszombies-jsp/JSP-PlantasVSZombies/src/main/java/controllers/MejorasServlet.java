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

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		actualizarSemillaSeleccionada(request);

		// genero la vista
		request.getRequestDispatcher("mejoras.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		actualizarSemillaSeleccionada(request);

		getAdministradorJardinZen(request).comprarMejora();

		getAdministradorJardinZen(request).getMejoraSeleccionada()
				.aplicarMejora(
						getAdministradorJardinZen(request)
								.getSemillaSeleccionada());

		request.getRequestDispatcher("mejoras.jsp").forward(request, response);

	}

	private void actualizarSemillaSeleccionada(HttpServletRequest request) {
		// levanto los parametros
		String nombreSemillaSeleccionada = request
				.getParameter("semillaSeleccionada");

		// delego en el dominio
		getAdministradorJardinZen(request).buscarYSetearSemilla(
				nombreSemillaSeleccionada);
	}

	protected AdministradorJardinZen getAdministradorJardinZen(
			HttpServletRequest request) {
		if (request.getSession().getAttribute("adminAppModel") == null) {
			request.getSession().setAttribute(
					"adminAppModel",
					new AdministradorJardinZen(new Partida(null, new JardinZen(
							new Jardin(2, 2)))));

		}
		return (AdministradorJardinZen) request.getSession().getAttribute(
				"adminAppModel");
	}

	public int getRecursos(HttpServletRequest request) {
		return getAdministradorJardinZen(request).getPartida().getJardin()
				.getRecursos();
	}

}
