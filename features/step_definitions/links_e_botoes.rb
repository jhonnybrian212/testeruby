Quando("clico em botoes") do
    visit '/'
    click_on('Começar Automação Web') #Clica no link com a descrição marcada
    visit '/buscaelementos/botoes'
    click_button(class: 'btn waves-light')
    find('a[onclick="ativaedesativa1()"]').click
    find('a[onclick="ativaedesativa1()"]').double_click
    find('a[onclick="ativaedesativa1()"]').right_click
    visit '/'
    click_link('Github')
    sleep(5)
  end