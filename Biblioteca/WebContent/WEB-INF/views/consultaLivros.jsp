<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<jsp:include page="cabecalho.jsp"/>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Consula de Livros</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		
	</head>
	<body>
		<c:forEach var="livro"  items="${livros}">
			<div style="width:50%;display: flex;align-items: center;justify-content: flex-start;">
				<fieldset style="width:30%;">
					<legend>${livro.getAutor()}</legend>
					<ul>
						<li>${livro.getNome()}</li>
						<li>${livro.getNumeroDePaginas()}</li>
						<li>${livro.getDisponibilidade()}</li>
						<li>${livro.getDescricao()}</li>
						<spring:url value="/modificaDisponibilidadeAlugado/${livro.getNome()}" var="modificaDisponibilidadeAlugado"/>
						<button onclick="location.href='${modificaDisponibilidadeAlugado}'" />${livro.getStatus()}</button>
					</ul>
				</fieldset>
			</div>
		</c:forEach>	
	</body>
</html>
<jsp:include page="rodape.jsp"/>