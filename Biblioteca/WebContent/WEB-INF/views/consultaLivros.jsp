<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="cabecalho.jsp"/>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Consula de Livros</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		
	</head>
	<body>
		<c:forEach var="livro"  items="${livros}">
			<ul>
				<li>${livro.getAutor()}</li>
				<li>${livro.getNome()}</li>
				<li>${livro.getNumeroDePaginas()}</li>
				<li>${livro.getDisponibilidade()}</li>
				<li>${livro.getDescricao()}</li>
			</ul>
			<input type="submit" value="Disponivel"/>
		</c:forEach>	
	</body>
</html>
<jsp:include page="rodape.jsp"/>