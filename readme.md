<div align="center">

# Teste de Cadastro de Dog Walker

## Descrição

Este projeto contém uma suíte de testes automatizados para verificar o processo de cadastro de dog walkers na aplicação WalkDog. Os testes são realizados usando a biblioteca Browser, garantindo que o fluxo de cadastro funcione corretamente e forneça feedback ao usuário.

## Estrutura dos Testes

### Settings

- **Documentação**: Suite de testes de cadastro de dog walker.
- **Biblioteca**: Utiliza a biblioteca Browser para interagir com a interface da aplicação.

### Casos de Teste

#### Deve poder cadastrar um novo dog walker

Este teste valida se um novo dog walker pode ser cadastrado com sucesso. O fluxo de testes é o seguinte:

1. **Variáveis**:
   - Nome: `Ge Alves`
   - Email: `gealves@gmail.com`
   - CPF: `00000014141`
   - CEP: `04534011`
   - Endereço: `Rua Joaquim Floriano`
   - Bairro: `Itaim Bibi`
   - Cidade/UF: `São Paulo/SP`
   - Número: `50`
   - Detalhes do Endereço: `Casa 2`
   - CNH: `toretto.jpg`

2. **Passos**:
   - Ir para a página de cadastro.
   - Preencher o formulário de cadastro com as informações acima.
   - Submeter o formulário.
   - Verificar se o popup de confirmação exibe a mensagem: *"Recebemos o seu cadastro e em breve retornaremos o contato."*

### Keywords

- **Ir para página de cadastro**: Abre a página de cadastro e verifica se o título está visível.
- **Preenche o formulário de cadastro**: Preenche o formulário com os dados fornecidos.
- **Submeter o formulário de cadastro**: Clica no botão de registro.
- **Popup should be**: Verifica se a mensagem esperada aparece no popup.

