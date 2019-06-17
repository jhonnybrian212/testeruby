Quando("seleciono mouse hover") do
    visit '/iteracoes/mousehover'
    find('.card-content').hover.click
    sleep(3)
  end