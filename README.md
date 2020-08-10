## Configuração inicial

Antes de tudo, baixe esse repositório em sua máquina.

Certifique-se de que você possui as seguintes dependências devidamente instaladas na sua máquina:

* Ruby 2.5.6
  
  Para verificar, execute `ruby -v` a partir da linha de comando.

  Você pode instalar o interpretador de Ruby a partir do [_rvm_](https://rvm.io/rvm/install) ou do [_rbenv_](https://github.com/rbenv/rbenv#installation).
  
  Execute também `gem -v` para verificar se você possui o gerenciador de pacotes do Ruby já instalado.

* Bundle

  Para verificar essa dependência, execute `bundle -v`. Para instalar, use o comando `gem install bundler`.

* Webdriver

  É preciso ainda dispor de um arquivo com o webdriver a ser utilizado nos testes automatizados que você escreverá. O webdriver utilizado dependerá do navegador de sua preferência e de seu sistema operacional. Algumas opções são

  * [ChromeDriver](https://chromedriver.chromium.org/downloads), para o Google Chrome. 

  * [Geckodriver](https://github.com/mozilla/geckodriver/releases), para o Mozilla Firefox

  Você tem liberdade para optar por qualquer outro webdriver de sua preferência. Após ter escolhido o que você vai usar, descompacte o binário na pasta `webdriver` contida nesse repositório. Certifique-se de que esse é o único arquivo presente na pasta. Modifique as linhas 5 e 6 do arquivo `env.rb` para definir o driver de acordo com o navegador que você usa. Por padrão, o projeto está definido para o Google Chrome na versão 83.

  Consulte a [documentação](https://www.rubydoc.info/gems/selenium-webdriver/Selenium/WebDriver) do **Selenium::Webdriver** para saber mais.

  Por fim, execute `bundle install` para instalar o capybara, o cucumber e outras dependências do Ruby a partir do `Gemfile`.

--------------------------------------------------------

# # O que foi feito

## Item 1
Foi implementado os em Ruby os passos descritos em BDD.
Foi desenvolvida uma função para gerar um desconto aleatório e com isso, ser usado para a realização do teste de clicar em um desconto e verificar o valor maximo de desconto nos produtos.

## Item 2
Os cenários foram descritos de forma que validasse a funcionalidade de seguir lojinhas.

## Proximos passos
Para que o projeto se torne o mais profissional, entendo que será necessário aplicar o page object, refatorar a forma de chamar os testes e melhorar a forma de chamar as funções.
Buscar uma resolução para o item 1 (comparar o preço de desconto)

## Observação
## item 1
Não foi possível comparar o valor de cada produto com o valor randômico selecionado.  

A ideia era percorrer o array de produtos e validar se o campo desconto da div estava visivel, se estivesse visivel ele iria fazer a comparação com o valor MAX_PRICE, caso não estivesse visivel, ele iria pegar o valor principal do produto. 
Para validar todos os produtos, a ideia era realizar um for após sair do array de produtos e se o botão PROXIMO estivesse habilitado chamaria o laço de repetição que foi feito anteriormente.
