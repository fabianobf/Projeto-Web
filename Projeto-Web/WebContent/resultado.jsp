<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Informações do pedido</title>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
	<form action="produto" method="get">
		<table border="1">
			<tr>
				<th>Data de entrega</th>
				<th>Nome</th>
				<th>Endereço</th>
				<th>CEP</th>
				<th>Tipo de pedido</th>
				<th>Descrição do pedido</th>				
			</tr>
			<tr>
				<td><%= request.getParameter("entrega") %></td>
				<td><%= request.getParameter("nome") %></td>
				<td><%= request.getParameter("endereco") %></td>
				<td><%= request.getParameter("cep") %></td>
				<td><%= request.getParameter("pedido") %></td>
				<td><%= request.getParameter("descricao") %></td>				
			</tr>
		</table>
	</form>
</body>
</html>