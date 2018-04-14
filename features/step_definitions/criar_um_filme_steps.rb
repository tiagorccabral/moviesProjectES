# Cenário Usuário tenta criar um novo filme

E(/^preencher todos os campos corretamente$/) do
  fill_in "title", :with=> "Titanic"
  fill_in "description", :with=> "Um grande navio de ferro afunda no mar"
  fill_in "director", :with=> "James Cameron"
  fill_in "release_date", :with=> "1998/01/16"
end

Então(/^eu devo estar novamente na página principal$/) do
  expect(page.current_path).to eq(movies_path)
end

# Cenário Usuário tenta criar um novo filme com dados inválidos

E(/^eu deixar um ou mais campos em branco$/) do
  fill_in "title", :with=> ""
  fill_in "description", :with=> ""
  fill_in "director", :with=> ""
  fill_in "release_date", :with=> ""
end

Então(/^eu devo continuar na página de criar novo filme, pois o formulário foi preenchido de maneira incorreta$/) do
  expect(page.current_path).to eq(new_movie_path)
end

# Comum

Dado(/^que eu esteja na página principal$/) do
  visit "/" #index de filmes
end

Quando(/^eu navegar até a página de novo filme, clicando no botão "([^"]*)"$/) do |textoBotao|
  click_link textoBotao
end

E(/^eu clicar no botão "([^"]*)"$/) do |textoBotao|
  click_button textoBotao
end

E(/^a página deve conter uma mensagem de "([^"]*)"$/) do |textoDaPagina|
  page.has_content?(textoDaPagina)
end

