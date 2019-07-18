Dado("que estou na tela do dragdrop") do
    visit '/iteracoes/draganddrop'
  end
  
  Entao("verifico se arrastou o dragdrop") do
    @elemento1 = find('#winston')
    @elemento2 = find('#dropzone')

    @elemento1.drag_to(@elemento2)
    sleep(4)
  end