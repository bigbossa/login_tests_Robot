*** Settings ***
Documentation     Login test with 10 different usernames
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${LOGIN URL}      https://e-memo-yongconcrete.com:10445/graph/login
${WELCOME URL}    https://e-memo-yongconcrete.com:10445/graph
${DELAY}          0.3
${PASSWORD}       Yong1234

@{USERS}
...    Y111085
...    Y820305
...    Y820296
...    Y111015
...    Y810483
...    Y820274
...    Y510015
...    Y810204
...    Y810443 
...    Y820259
...    Y810486
...    Y111084
...    Y820203



*** Test Cases ***
Login 10 Users Open Close
    FOR    ${user}    IN    @{USERS}
        Log    ===== LOGIN USER ${user} =====
        Open Browser    ${LOGIN URL}    ${BROWSER}
        Set Window Size    1200    800
        Set Selenium Speed    ${DELAY}

        Wait Until Element Is Visible    id=username    10s
        Title Should Be    ระบบแจ้งซ่อม
        Input Text    id=username    ${user}
        Input Text    id=password    ${PASSWORD}
        Click Button    id=submit-button

        Wait Until Location Is    ${WELCOME URL}    10s
        Close Browser
    END
