Quando("interajo com dropdown e select") do
visit '/buscaelementos/dropdowneselect' 
find('.btn.dropdown-button').click
find('#dropdown3').click
select 'Chrome', from: 'dropdown' #Seleciona ma opção dentro de uma box
find('option[value="2"]').select_option #Seleciona ma opção dentro de uma box


end

Quando("preencho autocomplete") do
visit '/widgets/autocomplete' 
find('#autocomplete-input').set 'São Paul'
find('ul', text: 'São Paulo').click


sleep(5)
end