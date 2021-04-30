package br.com.zup.SpringBootThree.repository;

import java.util.Optional;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;


import br.com.zup.SpringBootThree.domain.Cadastro;


@DataJpaTest
public class CadastroRepositoryTest {
	
	@Autowired
	private CadastroRepository cadastroRepository;
	
	@Test
	public void buscarPorUmEmail() {
		String email = ("aluno1@email.com");
		Optional<Cadastro> cadastro = cadastroRepository.findByEmail(email);
		assertNotNull(cadastro);
		assertEquals(email, cadastro.get().getEmail());
	
	}

}
