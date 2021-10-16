#language:pt
  Funcionalidade: Account CRUD

    @cadastroCRUD
    Cenario: Cadastro nova conta
      Dado que a pagina new acconut esteja sendo exibida
      Quando os campos de cadastro estiverem preenchidos com
        | username | chronos_amaral           |
        | email    | chronos_amaral@email.com |
        | password | Senha123                 |
        | country  | Brazil                   |
      Entao deve ser possivel logar no sistema apos o cadastro