*** Settings ***
Resource    ./main.robot


*** Keywords ***
Abrir o site
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome

Fechar o site
    Close All Browsers
