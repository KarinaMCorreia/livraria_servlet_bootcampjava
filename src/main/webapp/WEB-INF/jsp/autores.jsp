<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista De Livros</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
</head>
<body class="container">



	<div class="p-1 mb-1 mt-1 bg-dark text-white border">
		<h2 class="text-center text-info">Cadastrar Autores</h2>
	</div>

	<form action="<c:url value="/autores"/>" method="POST">
		<div class="form-group text-dark">

			<label for="nome" class="text-dark text-muted">NOME</label> <input
				id="nome" class="form-control thead-dark" name="nome"
				>
		</div>

		<div class="form-goup">
			<label for="email" class="text-dark text-muted">E-MAIL</label> <input
				id="email" class="form-control" name="email"
				>

		</div>

			<div>

				<div class="birth-date-label-group form-goup ">
					<label for="dataNascimento" class="form-label text-muted ">DATA DE NASCIMENTO</label>
				</div>
				    <input id="dataNascimentodia"    name="dataNascimentodia"        placeholder="DD"   type="number"     class=" text-muted form-input birth-date form-2-digits   col-auto col-1  checklist-field"          value="15"   size="2" maxlength="2"> <span class="birth-date-slash">/</span> 
					<input id="dataNascimentomes"    name="dataNascimentomes"        placeholder="MM"   type="number"     class=" text-muted form-input birth-date form-2-digits   col-1 checklist-field"                    value="04"   size="2" maxlength="2"> <span class="  birth-date-slash">/</span> 
					<input id="dataNascimentoano"    name="dataNascimentoano"        placeholder="AAAA" type="number"     class=" text-muted form-input birth-date form-1-digits   col-1 "                                   value="1994" size="4" maxlength="4"> 
		       </div>

		<div class="form-goup">
			<label for="curriculo" class="text-dark text-muted">MINI
				CURRÍCULO</label> <input id="curriculo" class="form-control"
				name="curriculo">
		</div>

		<input type="submit" value="Cadastrar"
			class="p-1 mb-3 mt-2 text-info btn-outline-dark btn-sucesso">

	</form>

	<div class="p-1 mb-1 bg-dark text-white border">
		<h2 class="text-center  text-info">Lista de Autores</h2>
	</div>

	<div class="table-responsive">
		<table
			class=" table-bordered table table-hover  table-success table-light">
			<thead class="thead-dark">
				<tr>
					<th class="bg-dark text-info">NOME</th>
					<th class="bg-dark text-info">EMAIL</th>
					<th class="bg-dark text-info">DATA NASCIMENTO</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${autores}" var="t">
					<tr>
						<td>${t.nome}</td>
						<td>${t.email}</td>
						<td>${t.dataNascimento}</td>
				
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>