*** Settings ***

Library        app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=        Welcome         Gustavo
    Should Be Equal    ${result}    Olá Gustavo, Bem vindo ao curso básico de Robot Framework!