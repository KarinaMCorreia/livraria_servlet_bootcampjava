<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Lista De Livros</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" ntegrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

</head>

<body class="container">

	    <div class="p-1 mb-1 mt-1 bg-dark  border" style="width: 100%; border-radius: 10px;">
		     <h2 class="text-center " style="color: #00FFFF; font-family: Courier New; text-shadow: 0px 1px;"> Cadastrar Autores </h2> 
	    </div>

 <form action="<c:url value="/autores"/>" method="POST">
		<div>
			<label for="nome" style=" font-family:  monospace; margin-bottom: -21px; color: #000000">NOME</label> 
			<input id="nome"  style="width: 100%; border-radius: 6px; "  name="nome" required>
		</div>

		 <div>
			<label for="email"  style="font-family:  monospace; margin-bottom: -20px; color: #000000"  >E-MAIL</label> 
			<input id="email"  style="width: 100%; border-radius: 6px; " name="email" required>
		 </div>

          <div>
          
		    <div class="birth-date-label-group form-goup ">
			    <label for="dataNascimento" class="form-label  " style="font-family:  monospace; margin-bottom: -4px;  color:  #000000" >DATA DE NASCIMENTO</label>
		    </div>
				<input id="dataNascimentodia"  style="width: 59px; height: 25px; border-radius: 6px; "  name="dataNascimentodia" placeholder="DD" type="number" class="  form-input birth-date form-2-digits   col-auto col-1  checklist-field" value="15" size="2" maxlength="2"> 
				<span class="birth-date-slash">/</span> 
				<input id="dataNascimentomes" style="width: 59px; height: 25px; border-radius: 6px; " name="dataNascimentomes" placeholder="MM" type="number" class="  form-input birth-date form-2-digits     col-1 checklist-field" value="04" size="2" maxlength="2" > 
				<span class="  birth-date-slash">/</span> 
				<input id="dataNascimentoano" style="width: 59px; height: 25px; border-radius: 6px;  " name="dataNascimentoano" placeholder="AAAA" type="number" class="   mb-2 mt-1  form-input birth-date form-1-digits   col-1 " value="1994" size="4" maxlength="4" >
		  </div>

		<div>
			<label for="curriculo" style=" font-family: monospace; margin-bottom:-4px; border-radius: 15px;  color: #000000 ">MINI CURRÍCULO</label> 
			<input id="curriculo"  style=" width: 100%; height: 39px; border-radius: 6px;  "  name="curriculo" required>
		</div>
         
		 <input type="submit" value="Cadastrar" style=" font-family: monospace; margin-bottom: 10px; margin-top: 10px; border-radius: 11px;  background-color: #000000;  color: #00FFFF; "  >
		 
 </form>

	<div class="p-1 mb-1 bg-dark text-white border" style="width: 100%; border-radius: 10px;">
		<h2 class="text-center " style="color: #00FFFF; font-family: Courier New; text-shadow: 0px 1px; ">Lista de Autores</h2>
	</div>

	<div class="table-responsive"  style=" border-radius: 15px  15px 0px 0px;">
		<table class=" table-bordered table table-hover  table-success table-light" >
			<thead class="thead-dark" style=" border-radius: 10px;">
				<tr>
					<th class="bg-dark " style="font-family: monospace; color: #00FFFF">NOME</th>
					<th class="bg-dark " style="font-family: monospace; color: #00FFFF">EMAIL</th>
					<th class="bg-dark " style="font-family: monospace; color: #00FFFF">DATA NASCIMENTO</th>
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