Quando("eu faco um upload de arquivo") do
visit '/outros/uploaddearquivos'
#attach_file('upload','C:\Users\221507\Documents\Projetos Ruby\Capybara Testes\Tests\features\support\jack.png',make_visible: true )

#Colocando uma variavel para @imagem, apontando o arquivo e o diretório
@imagem = File.join(Dir.pwd, 'features\support\jack.png')
attach_file('upload', @imagem ,make_visible: true )
sleep(3)
end