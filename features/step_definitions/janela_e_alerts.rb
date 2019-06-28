Quando("eu entro na janela eu verifico a mensagem") do
    visit '/mudancadefoco/janela'

#janela recebe uma janela que foi aberta pelo link
    janela = window_opened_by do
        click_link 'Clique aqui'
    end

#muda de foco para a janela
    within_window janela do

        expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'

        janela.close
        sleep(2)
end

#Segunda opção
    click_link 'Clique aqui'

    #mudando para ultima tela
    switch_to_window windows.last
 
    expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'

    windows.last.close
    sleep(2)



end
  
  Quando("eu entro no alert eu verifico e faco a acao") do
    visit '/mudancadefoco/alert'
    find('button[onclick="jsAlert()"]').click
    page.accept_alert
  end