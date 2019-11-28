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
		<h3>Cadastro de Livro</h3>
		<form action="adicionarLivro" method="post">
			<label>Autor</label><br/>
			<input type="text" name="autor"/><br/>
			<label>Nome</label><br/>
			<input type="text" name="nome"/><br/>
			<label>Quantidade de paginas</label><br/>
			<input type="number" name="numeroDePaginas"/><br/>
			<label>Descrição</label><br/>
			<input type="text" name="descricao"/><br/>
			<input type="submit" value="Salvar"/>
		</form>
	</body>
</html>
<jsp:include page="rodape.jsp"/>