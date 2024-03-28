*** Settings ***
Resource    ./main.robot


*** Keywords ***
Colocar informações do login e acessar página
    Input Text    name:username    ${Username}
    Input Text    name:password    ${Password}
    Click Button    class:oxd-button oxd-button--medium oxd-button--main orangehrm-login-button

Selecionar Pim
    Click Element    (//a[@class="oxd-main-menu-item"])[2]

Selecionar botão add
    Click Element    class:oxd-button oxd-button--medium oxd-button--secondary

Preencher os dados e clicar no botão de salvar
    Input Text    name:firstName    ${firstname}
    Input Text    name:middleName    ${middlename}
    Input Text    name:lastName    ${lastname}
    Input Text    class:oxd-input oxd-input--active    ${employee_id}
    Click Button    class:oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space

Procurar pelo id
    Input Text    class:oxd-input oxd-input--active    ${employee_id}
    Click Button    class:oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space

Verificar se o usuário é encontrado
    Element Should Be Visible    class:oxd-table-row oxd-table-row--with-border oxd-table-row--clickable    Anderson
