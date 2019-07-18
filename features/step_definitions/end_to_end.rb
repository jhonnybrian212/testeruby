Quando("eu cadastro o usuário.") do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Jhonny')
    find('#user_lastname').set('Anacleto')
    fill_in(id: 'user_email', with: 'jhonny@gmail.com')
    find('.actions.btn.waves-effect.green').click

  end
  
  Então("verifico se o usuário foi cadastrado.") do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
  end
  
  Quando("edito um usuário") do
    
  end
  
  Então("verifico se o usuário foi editado.") do
    
  end