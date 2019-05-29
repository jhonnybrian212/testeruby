Quando("eu marco um checkbox e um radiobox") do
visit '/buscaelementos/radioecheckbox'
find('label[for="white"]').click #clica na label
check('purple', allow_label_click:true) #marca a label
uncheck('purple', allow_label_click:true) #desmarca a label
#find('label[for="purple"]').click outra forma
choose('red',allow_label_click:true)
sleep(2)
end