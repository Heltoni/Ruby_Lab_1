Dado("que eu acesse {string}") do |url|
    visit(url)    
end
  
Dado("realizo a pesquisa por {string}") do |pesquisa|    
    #fill_in('q', with:pesquisa)        
    # element = find(:css, 'input[name=q]')
    # element.send_keys (pesquisa)    
    # element.send_keys (:enter)        
    #find(:css, 'input[name=q]').send_keys(:enter)    
    find(:css, 'input[name=q]').send_keys(pesquisa).send_keys(:return)
end

Então("o Google retorna resultados contendo {string} e {string}") do |resultado1, resultado2|    
    expect(page).to have_content(resultado1)
    expect(page).to have_content(resultado2)

    page.save_screenshot('.\\prints\\ComResultado.png')
end

Então("o Google não retorna resultados") do    
    expect(page).to have_content('não encontrou nenhum documento correspondente')

    page.save_screenshot('.\\prints\\SemResultado.png')
end