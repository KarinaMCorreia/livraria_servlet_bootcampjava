package br.com.alura.servlet;

import java.sql.SQLWarning;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.alura.dao.autoresDao;
import br.com.alura.factory.ConnectionFactory;
import br.com.alura.modelo.Autor;

@WebServlet("/autores")
public class AutoresServlet extends HttpServlet {

	private autoresDao dao;

	public AutoresServlet() {

		this.dao = new autoresDao(new ConnectionFactory().getConnection());
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setAttribute("autores", dao.Listar());

		req.getRequestDispatcher("WEB-INF/jsp/autores.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String nome  = req.getParameter("nome");
		String email = req.getParameter("email");
		LocalDate dataNascimento = LocalDate.parse(
				req.getParameter("dataNascimentodia") + "/" + 
		        req.getParameter("dataNascimentomes") + "/" + 
				req.getParameter("dataNascimentoano"),
				DateTimeFormatter.ofPattern("dd/M/yyyy"));
		String curriculo = req.getParameter("curriculo");

		Autor autores = new Autor(nome, email, dataNascimento, curriculo);

		dao.Cadastrar(autores);

		resp.sendRedirect("autores");

	}

}
