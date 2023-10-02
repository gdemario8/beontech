# =============================================================
*** Settings ***
# =============================================================

Documentation       global settings
Library             SeleniumLibrary

# =============================================================
*** Variables ***
# =============================================================

${browser}          chrome
${maxWait}          30 seconds

# =============================================================
*** Keywords ***
# =============================================================
Open browser for desktop

    Open Browser    url=about:blank    browser=${browser}    options=binary_location="C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe"
    Maximize Browser Window
    Set Selenium Timeout    ${maxWait}

Click on button

    [Arguments]    ${element}

    Wait Until Element Is Visible    ${element}
    Click Button    ${element}

Type on element

    [Arguments]    ${element}    ${string}

    Wait Until Element Is Visible    ${element}
    Input Text    ${element}    ${string}

Select dropdown by text

    [Arguments]    ${element}    ${text}

    Wait Until Element Is Visible    ${element}
    Select From List By Label    ${element}    ${text}