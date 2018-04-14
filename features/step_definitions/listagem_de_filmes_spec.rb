require 'capybara/rails'

Dado (/^que eu esteja na página de listagem de filmes$/) do
  @movie1 = Movie.create(title: "Titanic", director: "James Cameron", description: "Um navio afunda no mar", release_date: "1998/01/18")
  @movie2 = Movie.create(title: "Avatar", director: "James Cameron", description: "Pessoas azuis e altas", release_date: "2010/01/01")
  visit(movies_path)
end

E (/^a página contenha uma lista com filmes como "([^"]*)" e "([^"]*)"$/) do |arg1, arg2|
  page.has_content?(arg1)
  page.has_content?(arg2)
end

E (/^cada filme da lista tenha um link no título$/) do
  find_link("Titanic")
  expect(page).to have_link("Titanic")
  expect(page).to have_link("Avatar")
end

E (/^eu clicar em um filme na lista$/) do
  click_link @movie.title
end

Então("eu devo ser redirecionado para uma página com mais informações sobre aquele filme") do
  pending # Write code here that turns the phrase above into concrete actions
end
