Quando("eu faco Cadastro") do
    visit '/users/new'
    fill_in(id:'user_name', with:'jhonny')
    find('#user_lastname').set('Anacleto')
    find('#user_email').set('jhonnybrian_212@hotmail.com')
    find('#user_address').set('Rua Rio Formoso')
    find('#user_university').set('Uninove')
    find('#user_profile').set('Analista de Qualidade')
    find('#user_gender').set('Homem')
    find('#user_age').set('25')
    find('input[value="Criar"]').click
  end
  
  Entao("verifico se fui cadastrado.") do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
 
  end