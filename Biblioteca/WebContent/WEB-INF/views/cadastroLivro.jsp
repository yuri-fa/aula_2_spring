<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="cabecalho.jsp"/>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Cadastro de Livro</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	</head>
	<body>
		<h2 style="text-align: center;">Cadastro de Livro</h3>
		<form action="adicionarLivro" method="post">
			<div style="display: flex;align-items: center;justify-content: center;">
				<fieldset class="">
				<legend>Dados do Livro</legend>
					<label>Autor</label><br/>
					<input type="text" name="autor"/><br/>
					<label>Nome</label><br/>
					<input type="text" name="nome"/><br/>
					<label>Quantidade de paginas</label><br/>
					<input type="number" name="numeroDePaginas"/><br/>
					<label>Descrição</label><br/>
					<input type="text" name="descricao"/><br/>
					<input type="submit" value="Salvar"/>
				</fieldset>
			</div>
		</form>
	</body>
</html>
<jsp:include page="rodape.jsp"/>