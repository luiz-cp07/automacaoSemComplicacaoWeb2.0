#language:pt
Funcionalidade: Login

  Contexto:
    Dado que a modal esteja sendo exibida
  @fecharModal
  Cenario: Fechar a modal ao clicar fora da mesma
    Quando for realizado um clique fora da modal
    Entao a janela modal deve ser fechada
  @fecharModalIcone
  Cenario: Fechar a modal ao clicar no ícone fechar
    Quando for realizado um clique no ícone de fechar da modal
    Entao a janela modal deve ser fechada
  @createNewAccount
  Cenario: Link Create New Account
    Quando for realizado um clique no link Create New Account
    Entao a pagina Create Account deve ser exibida

  @loginComSucesso
  Esquema do Cenário: Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos da seguinte forma
      | usuario  | <usuario>  |
      | senha    | <senha>    |
      | remember | <remember> |
    Quando for realizado o clique no botao sign in
    Entao deve ser possivel logar no sistema
    Exemplos:
      | identificacao       | usuario     | senha      | remember |
      | campos obrigatorios | chronosluiz | Chronos123 | false    |
      | todos os campos     | chronosluiz | Chronos123 | true     |
  @loginInvalido
  Esquema do Cenario: Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos da seguinte forma
      | usuario  | <usuario>  |
      | senha    | <senha>    |
      | remember | <remember> |
    Quando for realizado o clique no botao sign in
    Entao o sistema devera exibir uma mensagem de erro
    Exemplos:
      | identificacao    | usuario      | senha      | remember |
      | usuario invalido | invalido     | Chronos123 | false    |
      | senha invalida   | chronosluiz  | invalida   | false    |
  @dadosEmBranco
  Esquema do Cenario: Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos da seguinte forma
      | usuario  | <usuario>  |
      | senha    | <senha>    |
      | remember | <remember> |
    Entao o botao sign in deve permanecer desabilitado
    Exemplos:
      | identificacao     | usuario     | senha      | remember |
      | usuario em branco |             | Chronos123 | false    |
      | senha em branco   | chronosluiz |            | false    |


