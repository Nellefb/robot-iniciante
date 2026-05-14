** Settings **

Library  SeleniumLibrary

** Variables **
${SITE_URL}  https://automationpratice.com.br/
${SITE_URL_TESTE}  https://www.google.com/
${USUARIO_EMAIL}  nala@teste.com
${USUARIO_SENHA}  123456

** Keywords **
Abrir Site da qazando
    Open Browser  ${SITE_URL}  chrome

Abrir esse Site 
    [Arguments]  ${url}
    Open Browser  ${url}  chrome
    Esperar Elemento  10

Aguardar site carregar
    Sleep  5s 

Clicar sobre botao login
    Click Element  xpath://a[@href='/login']

Digitar email
    Input Text  id:user  ${USUARIO_EMAIL} 

Digitar senha
    Input Text  id:password  ${USUARIO_SENHA}

Clicar em logar
    Click Element  id:btnLogin

Verificar texto login realizado
    ${texto_atual}  Get Text  id:swal2-title
    Should Be Equal As Strings  ${texto_atual}  Login realizado

Tirar Print
    Capture Page Screenshot

Esperar Elemento
    [Arguments]  ${tempo}
    Set Selenium Implicit Wait  ${tempo}s

** Test Cases **
Cenário 1: Testando valor no teste
    [Tags]  Cenario3
    Abrir esse Site  https://automationpratice.com.br/
    Clicar sobre botao login
    Digitar email
    Digitar senha
    Clicar em logar
    Verificar texto login realizado