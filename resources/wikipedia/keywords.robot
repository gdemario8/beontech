# =============================================================
*** Settings ***
# =============================================================

Resource    ../global.robot

# =============================================================
*** Keywords ***
# =============================================================

I open the wikipedia home page

    Open browser for desktop
    Go To    https://www.wikipedia.org

I search for the term ${term}

    Type on element    id=searchInput    ${term}
    Press Keys    id=searchInput    RETURN

I should see the result page with title ${term}

    Wait Until Element Is Visible    //span[text()='${term}']