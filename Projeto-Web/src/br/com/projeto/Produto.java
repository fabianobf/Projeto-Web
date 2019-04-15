package br.com.projeto;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/produto")
public class Produto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String endereco = request.getParameter("endereco");
		String cep = request.getParameter("cep");
		String pedido = request.getParameter("pedido");
		String descricao = request.getParameter("descricao");
		String entrega = request.getParameter("entrega");
		
		request.setAttribute("nome", nome);
		request.setAttribute("endereco", endereco);
		request.setAttribute("cep", cep);
		request.setAttribute("pedido", pedido);
		request.setAttribute("descricao", descricao);
		request.setAttribute("entrega", entrega);
		
		request.getRequestDispatcher("resultado.jsp").forward(request, response);
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String nome = req.getParameter("nome");
		String endereco = req.getParameter("endereco");
		String cep = req.getParameter("cep");
		String pedido = req.getParameter("pedido");
		String descricao = req.getParameter("descricao");
		String entrega = req.getParameter("entrega");
		
		req.setAttribute("nome", nome);
		req.setAttribute("endereco", endereco);
		req.setAttribute("cep", cep);
		req.setAttribute("pedido", pedido);
		req.setAttribute("descricao", descricao);
		req.setAttribute("entrega", entrega);
		
	}

}
