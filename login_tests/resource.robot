*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         https://e-memo-yongconcrete.com:10445
${BROWSER}        chrome
${DELAY}          1
${VALID USER}     Y222827
${VALID_PASSWORD}    1234
${LOGIN URL}      https://e-memo-yongconcrete.com:10445/graph/login
${WELCOME URL}    https://e-memo-yongconcrete.com:10445/graph
${ERROR URL}      https://e-memo-yongconcrete.com:10445/graph/login

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    ระบบแจ้งซ่อม

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    username   ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    submit-button

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    ระบบแจ้งซ่อม