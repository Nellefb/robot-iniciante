** Settings **

Library  SeleniumLibrary

** Variables **
${SITE_URL}  https://automationpratice.com.br/
${SITE_URL_TESTE}  https://www.google.com/
${USUARIO_EMAIL}  nala@teste.com
${USUARIO_SENHA}  123456

** Keywords **
Abrir Site teste
    Open Browser  ${SITE_URL_TESTE}  chrome

Abrir Site da qazando
    Open Browser  ${SITE_URL}  chrome

Abrir esse Site 
    [Arguments]  ${url}
    Open Browser  ${url}  chrome

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

** Test Cases **
Cenário 1: Acessando o site da Qazando
    Abrir Site da qazando
    Aguardar site carregar
    Clicar sobre botao login
    Aguardar site carregar
    Digitar email
    Digitar senha
    Aguardar site carregar
    Clicar em logar
    Aguardar site carregar
    Verificar texto login realizado

Cenário 2: Testando Robot
    Abrir Site teste  
    Aguardar site carregar
    Clicar sobre botao login
    Aguardar site carregar
    Digitar email
    Digitar senha
    Aguardar site carregar
    Clicar em logar
    Aguardar site carregar
    Verificar texto login realizado

Cenário 3: Testando valor no teste
    [Tags]  Cenario3
    Abrir esse Site  https://automationpratice.com.br/
    Aguardar site carregar
    Clicar sobre botao login
    Aguardar site carregar
    Digitar email
    Digitar senha
    Aguardar site carregar
    Clicar em logar
    Aguardar site carregar
    Verificar texto login realizado