*** Settings ***
Documentation  Suite de testes de cadastro de dog walker

Library  Browser


*** Test Cases ***
Deve poder cadastrar um novo dog walker

  ${name}  Set Variable  Ge alves
  ${email}  Set Variable  Gealves@gmail.com
  ${cpf}  Set Variable  00000014141
  ${cep}  Set Variable  04534011
  ${addressStreet}  Set Variable  Rua Joaquim Floriano
  ${addressDistrict}  Set Variable  Itaim Bibi
  ${addressCityUf}  Set Variable  São Paulo/SP
  ${addressNumber}  Set Variable  50
  ${addressDetails}  Set Variable  Casa 2
  ${cnh}  Set Variable  toretto.jpg

  Ir para página de cadastro
  Preenche o fomulario de cadastro  ${name}  ${email}  ${cpf}  ${cep}  ${addressStreet}  ${addressDistrict}  ${addressCityUf}  ${addressNumber}  ${addressDetails}    ${cnh}
  Submeter o formulario de cadastro
  Popup should be   Recebemos o seu cadastro e em breve retornaremos o contato.

*** Keywords ***

Ir para página de cadastro
  New Browser  browser=chromium  headless=False
  New Page  https://walkdog.vercel.app/signup

  Wait For Elements State  form h1  visible  3000
  Get Text  form h1  equal  Faça seu cadastro

Preenche o fomulario de cadastro
  [Arguments]  ${name}  ${email}  ${cpf}  ${cep}  ${addressStreet}  ${addressDistrict}  ${addressCityUf}  ${addressNumber}  ${addressDetails}   ${cnh}
  Fill Text  css=input[name=name]  ${name}
  Fill Text  css=input[name=email]  ${email}
  Fill Text  css=input[name=cpf]  ${cpf}
  Fill Text  css=input[name=cep]  ${cep}

  Click  css=input[type=button][value$=CEP]

  Get Property  css=input[name=addressStreet]  value  equal  ${addressStreet}
  Get Property  css=input[name=addressDistrict]  value  equal  ${addressDistrict}
  Get Property  css=input[name=addressCityUf]  value  equal  ${addressCityUf}

  Fill Text  css=input[name=addressNumber]  ${addressNumber}
  Fill Text  css=input[name=addressDetails]  ${addressDetails}

  Upload File By Selector  css=input[type=file]  ${EXECDIR}/${cnh}

Submeter o formulario de cadastro
  Click  css=.button-register

Popup should be
  [Arguments]    ${expected_text}
  Wait For Elements State  css=.swal2-html-container  visible  5
  Get Text  css=.swal2-html-container  equal  ${expected_text}

  # Deixar teste aberto por 5 segundos
  Sleep  5