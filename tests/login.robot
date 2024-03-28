*** Settings ***
Resource            ../resources/main.robot

Suite Setup         Abrir o site
Suite Teardown      Fechar o site


*** Test Cases ***
CT01 - Teste proposto
    Colocar informações do login e acessar página
    Selecionar Pim
    Selecionar botão add
    Preencher os dados e clicar no botão de salvar
    Selecionar Pim
    Procurar pelo id
    Verificar se o usuário é encontrado
