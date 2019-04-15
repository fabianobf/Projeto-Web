<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de pedidos</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.mask.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	$('.entrega').mask('00/00/0000');
});

$(document).ready(function() {
	$('.cep').mask('00000-000');
});

</script>

</head>
<body>
	<div>
	<form method="post" action="produto">
		<h1>Cadastro de pedidos</h1>
		<fieldset>
		<label>Nome</label>
		<input type="text" name="nome" required="required">
		<br>
		<legend>Dados da entrega</legend>
		<br>
		<label>Endereço:</label>
		<input type="text" name="endereco" required="required">
		<label>CEP:</label>
		<input type="text" name="cep" class="cep" placeholder="00000-000" required="required">
		<br>
		<label>Tipo de pedido:</label>
		<select name="pedido">
			<option value="Entrega Expressa">Entrega expressa</option>
			<option value="Entrega Rastreio">Entrega rastreio</option>
			<option value="Entrega Comum">Entrega comum</option>
		</select>
		<br>
		<label>Descrição do pedido:</label>
		<br>
		<textarea rows="6" cols="80" name="descricao"> </textarea>
		<br>
		<label>Data da entrega:</label>
		<input type="text" name="entrega" class="entrega" placeholder="00/00/0000" required="required">
		</fieldset>
		<br>
		<input type="submit" value="Cadastrar o pedido">
	</form>
	</div>
</body>
</html>