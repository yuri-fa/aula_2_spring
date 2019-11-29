package br.com.dell.biblioteca.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.dell.biblioteca.model.Livro;
import br.com.dell.biblioteca.model.Livro.Disponibilidade;

@Controller
public class LivroController {

	private List<Livro> livrosList = new ArrayList<>();
	
	public LivroController() {
		
	}
	
	@GetMapping("/cadastroLivro")
	public String cadastroLivro() {
		return "cadastroLivro";
	}
	
	@GetMapping("/consultarLivros")
	public String consultaDeLivros() {
		return "consultaLivros";
	}
	
	@PostMapping("/adicionarLivro")
	public String adicionarLivro(Livro livro) {
		Optional<Livro> isValido = livrosList.stream().filter(livroTemp -> livroTemp.getNome().equals(livro.getNome())).findFirst();
		if (isValido.isPresent()) {
			System.out.println(livro.toString() + "ja estão na lista");
		}else {
			livro.setDisponibilidade(Disponibilidade.DISPONIVEL);
			livrosList.add(livro);
			System.out.println(livro.toString() + "inserido com sucesso!");
		}
		return "redirect:consultaLivros";
	}
	
	@RequestMapping(value ="/consultaLivros", method = RequestMethod.GET)
	public ModelAndView getLivros(){
		ModelAndView model = new ModelAndView("consultaLivros");
		model.addObject("livros",livrosList);
		return model;
	}
	
	@GetMapping(value="/modificaDisponibilidadeAlugado/{nome}")
	public String modificaDisponibilidadeAlugado(@PathVariable("nome") String nomeLivro) {
		for (Livro livroTemp : livrosList) {
			if (livroTemp.getNome().equals(nomeLivro)) {
				livroTemp.setDisponibilidade(livroTemp.getDisponibilidade().equals(Disponibilidade.DISPONIVEL) ? Disponibilidade.ALUGADO : Disponibilidade.DISPONIVEL);
			}
		}
		return "redirect:../consultaLivros";
	}

}
