package br.com.dell.biblioteca.model;

public class Livro {

	private String nome;
	private String autor;
	private Integer numeroDePaginas;
	private Disponibilidade disponibilidade;
	private String descricao;

	public Livro() {
	}
	
	public String getStatus() {
		if (disponibilidade.equals(Disponibilidade.ALUGADO)) {
			return Status.RECEBER.name();
		}else {
			return Status.ALUGAR.name();
		}
	}
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public Integer getNumeroDePaginas() {
		return numeroDePaginas;
	}

	public void setNumeroDePaginas(Integer numeroDePaginas) {
		this.numeroDePaginas = numeroDePaginas;
	}

	public Disponibilidade getDisponibilidade() {
		return disponibilidade;
	}

	public void setDisponibilidade(Disponibilidade disponibilidade) {
		this.disponibilidade = disponibilidade;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public enum Disponibilidade{
		ALUGADO,DISPONIVEL;
	}
	
	public enum Status{
		ALUGAR,RECEBER;
	}
	
	
	public String toString() {
		return "Livro: "+ this.nome;
	}
}
