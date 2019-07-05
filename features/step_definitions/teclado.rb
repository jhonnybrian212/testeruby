Quando("realizo acoes com teclado") do
    visit '/users/new'
    find('#user_name').send_keys(:page_down)
    sleep(4)
  end