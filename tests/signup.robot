*** Settings ***
Documentation  Suite de testes de cadastro de dog walker

Resource  ../resources/base.resource


*** Test Cases ***
Deve poder cadastrar um novo dog walker

  ${dog_walker}  Create Dictionary  
  ...    name=Ge alves  
  ...    email=Gealves@gmail.com  
  ...    cpf=00000014141  
  ...    cep=04534011  
  ...    street=Rua Joaquim Floriano  
  ...    district=Itaim Bibi  
  ...    city_uf=São Paulo/SP  
  ...    number=50  
  ...    details=Casa 2  
  ...    cnh=toretto.jpg

  Ir para página de cadastro
  Preenche o fomulario de cadastro  ${dog_walker}
  Submeter o formulario de cadastro
  Popup should be   Recebemos o seu cadastro e em breve retornaremos o contato.

*** Keywords ***

