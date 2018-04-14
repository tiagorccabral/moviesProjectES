# language: pt
# encoding: utf-8

Funcionalidade: Criar um novo filme

  Cenário: Usuário tenta criar um novo filme
    Dado que eu esteja na página principal
    Quando eu navegar até a página de novo filme, clicando no botão "Criar novo filme"
    E preencher todos os campos corretamente
    E eu clicar no botão "Criar filme"
    Então eu devo estar novamente na página principal
    E a página deve conter uma mensagem de "O filme foi criado com sucesso"

  Cenario: Usuário tenta criar um novo filme com dados inválidos
    Dado que eu esteja na página de listagem de filmes
    Quando eu navegar até a página de novo filme, clicando no botão "Criar novo filme"
    E eu deixar um ou mais campos em branco
    E eu clicar no botão "Criar filme"
    Então eu devo continuar na página de criar novo filme, pois o formulário foi preenchido de maneira incorreta
    E a página deve conter uma mensagem de "O filme não foi criado"