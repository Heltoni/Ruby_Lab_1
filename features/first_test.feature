#language: pt

Funcionalidade: Pesquisa Google

@PesquisaComSucesso
Cenário: Pesquisa com sucesso
    Dado que eu acesse "https://www.google.com.br"
    E realizo a pesquisa por "Ruby + Cucumber"
    Então o Google retorna resultados contendo "Ruby" e "Cucumber"

@PesquisaSemRetorno
Cenário: Pesquisa sem retorno
    Dado que eu acesse "https://www.google.com.br"
    E realizo a pesquisa por "xhirindacse"
    Então o Google não retorna resultados