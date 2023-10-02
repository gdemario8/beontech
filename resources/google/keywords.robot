# =============================================================
*** Settings ***
# =============================================================

Resource    ../global.robot

# =============================================================
*** Variables ***
# =============================================================

# h3 links
${searchResultElement}    //a[@href='https://en.wikipedia.org/wiki/Software_testing']/h3[text()='Software testing']

# urls
${searchResultURL}        https://en.wikipedia.org/wiki/Software_testing

# titles
${searchResultTitle}      id=firstHeading

# =============================================================
*** Keywords ***
# =============================================================

I open google home

    Open browser for desktop
    Go To    https://google.com

I search for the term ${searchTerm}

    Type on element    name=q    ${searchTerm}
    Press Keys         name=q    RETURN

I should see one search result

    Wait Until Element Is Visible    ${searchResultElement}

I open the Wikipedia Result

    Wait Until Element Is Visible    ${searchResultElement}
    Click Element                    ${searchResultElement}

I should be on the correct page

    Wait Until Element Is Visible    ${searchResultTitle}
    Location Should Be               ${searchResultURL}