# SpringBootThree

<h2 align="center"> Primeiro desafio: <a href="https://cursos.alura.com.br/course/spring-boot-profiles-testes-deploy">🔗 Formulário de proposta de solução - Spring Boot e Teste: Profiles, Testes e Deploy</a> </h2>


<p align="justify"> :robot: Todas as respostas dadas pelos alunos e alunas do programa Orange Talent podem ser acessadas por mentores e programa managers que acompanham as turmas. Mas, como esse endereço reside no mesmo sistema onde os próprios alunos e alunas respondem às avaliações, é necessário controlarmos o acesso. Tanto aluno, como mentor, como program manager fazem login no mesmo sistema, mas, por conta do nível de acesso, tem acessos a endereços diferentes. 
Descreva quais seriam os passos para você, usando o Spring Security, proteger os acessos em função do nível de acesso (roles) de cada tipo de usuário logado no sistema.:robot: </p>


<p align="justify"> :exclamation: Implementei uma classe denominada SecurityConfigurations.java que vai configurar a hierarquia de acessos em função do perfil selecionando através dos "hasRole("MENTOR")", limitando quais acessos/ações são permitidas.
:exclamation: </p>

	//Configuracoes de autorizacao
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.headers().frameOptions().disable();
		http.authorizeRequests()
		.antMatchers(HttpMethod.GET, "/api/cadastro/listar").permitAll()
		.antMatchers("/h2-console/**").permitAll()
		.antMatchers(HttpMethod.POST, "/auth").permitAll()		
		.antMatchers(HttpMethod.POST, "/api/cadastro/**").permitAll()
		.antMatchers(HttpMethod.DELETE, "/api/cadastro/*").hasRole("MENTOR")
		.anyRequest().authenticated()
		.and().csrf().disable()
		.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
		.and().addFilterBefore(new AutenticacaoViaTokenFilter(tokenService, cadastroRepository), UsernamePasswordAuthenticationFilter.class);
	}
  
  
<p align="justify"> :robot: 
Além disso, agora, para cada resposta dada por um aluno ou aluna, o sistema deve enviar um email para os(as) program managers avisando do evento. Só que tem um detalhe, em ambiente de desenvolvimento esse envio deve ser apenas de brincadeira, um mero print exibindo o e-mail que deveria ser enviado. Só que em produção, o e-mail deveria ser enviado usando o provedor de envio de e-mails que a Zup utiliza. 
Descreva quais seriam os passos para você implementar o suporte a envios de emails de maneiras diferentes em função do ambiente de execução. :robot: </p>

<p align="justify"> :exclamation: Fiz a configuração do email no application.properties utilizando um gmail para teste no caso de rodar a aplicação em modo desenvolvimento ("prod"), e em conjunto implementei a seleção de qual profile gostaria de executar, tendo tanto a opção "dev" (desenvolvimento) como a "prod" (produção).
a utilização da anotação @Profile("prod") permite determinar o ambiente onde a aplicação irá executar, e o Spring trabalha com esse tipo de situação de uma maneira muito transparente, e em aplicações onde utilizamos SpringBoot isso se torna ainda mais simples. :exclamation: </p>

```

@Service
@Profile("prod")
public class EmailService {

	@Autowired
	private JavaMailSender mailSender;

	public String sendMail(String Text, String To, String From) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setText(Text);
		message.setTo(To);
		message.setFrom(From);

		try {
			mailSender.send(message);
			return "Email enviado com sucesso!";
		} catch (Exception e) {
			e.printStackTrace();
			return "Erro ao enviar email.";
		}
	}
}
```



```

application.properties

#Config Profile
server:
  port: 8080
  
spring:
  profiles:
    active: homolog

#spring-boot-starter-mail properties
spring.mail.host=smtp.gmail.com
spring.mail.port=587
spring.mail.username=luisgomesspring@gmail.com
spring.mail.password=bananinha!o!
spring.mail.properties.mail.smtp.auth=true
spring.mail.properties.mail.smtp.starttls.enable=true
spring.mail.properties.mail.smtp.starttls.required=true


```
