Dado("que eu uso o script") do
    visit '/outros/scroll'
    page.execute_script("window.scrollBy(0,1500)")
    @conta = page.evaluate_script('2+2');
    puts @conta
    sleep(3)
  end


  