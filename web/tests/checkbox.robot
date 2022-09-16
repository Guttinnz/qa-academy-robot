*** Settings ***

Resource        base.robot

Test Setup    Nova sessão

Test Teardown    Encerra sessão

*** Variables ***

${check_tor}        id:thor 
${check_iron}        css:input[value='iron-man']   
${check_panther}        xpath://*[@id='checkboxes']/input[7]  

*** Test Cases ***
Marcando opção com id
    
    Go To        ${url}/checkboxes   
    Select Checkbox        ${check_tor}
    Checkbox Should Be Selected        ${check_tor}  

Marcando opção com CSS Selector
    Go To        ${url}/checkboxes   
    Select Checkbox        ${check_iron}
    Checkbox Should Be Selected        ${check_iron}   

Marcando opção com Xpath
    Go To        ${url}/checkboxes   
    Select Checkbox        ${check_panther} 
    Checkbox Should Be Selected        ${check_panther}  
