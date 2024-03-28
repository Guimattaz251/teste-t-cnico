*** Settings ***
Resource    ./main.robot


*** Keywords ***
Colocar informações do login e acessar página
    Input Text    (//input[@class="oxd-input oxd-input--active"])[1]    ${Username}
    Input Text    (//input[@class="oxd-input oxd-input--active"])[2]    ${Password}
    Click Button    //button[@class="oxd-button oxd-button--medium oxd-button--main orangehrm-login-button"]

Selecionar Pim
    Click Element    (//a[@class="oxd-main-menu-item"])[2]

Selecionar botão add
    Click Element    //button[@class="oxd-button oxd-button--medium oxd-button--secondary"]

Preencher os dados e clicar no botão de salvar
    Input Text    //input[@class="oxd-input oxd-input--active orangehrm-firstname"]    ${firstname}
    Input Text    //input[@class="oxd-input oxd-input--active orangehrm-middlename"]    ${middlename}
    Input Text    //input[@class="oxd-input oxd-input--active orangehrm-lastname"]    ${lastname}
    Input Text    (//input[@class="oxd-input oxd-input--active"])[2]    ${employee_id}
    Click Button    //button[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]

Procurar pelo id
    Input Text    (//input[@class="oxd-input oxd-input--active"])[2]    ${employee_id}
    Click Button    //button[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]

Verificar se o usuário é encontrado
    Element Should Be Visible    //div[@class="oxd-table-row oxd-table-row--with-border oxd-table-row--clickable"]
    Element Should Contain
    ...    //div[@class="oxd-table-row oxd-table-row--with-border oxd-table-row--clickable"]
    ...    Anderson

Clicar no botão de apagar
    Click Button    (//button[@class="oxd-icon-button oxd-table-cell-action-space"])[1]
