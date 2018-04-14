# language: pt
# encoding: utf-8

Funcionalidade: Listar todas os filmes disponíveis, com links para visitar cada um individualmente

  Cenário: Um usuário visualiza um filme na lista e clica nele para ver mais informações.
    Dado que eu esteja na página principal
    E a página contenha uma lista com filmes como "Titanic" e "Avatar"
    #E cada filme da lista tenha um link no título
    E eu clicar em um filme na lista
    Então eu devo ser redirecionado para uma página com mais informações sobre aquele filme