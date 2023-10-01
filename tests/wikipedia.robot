# =============================================================
*** Settings ***
# =============================================================

Documentation    BeonTech
Resource         ../resources/global.robot
Resource         ../resources/wikipedia/keywords.robot

Test Teardown    Close All Browsers

# =============================================================
*** Variables ***
# =============================================================

${searchTerm}    House

# =============================================================
*** Test Cases ***
# =============================================================

Simple Search

    Given I open the wikipedia home page
    When I search for the term ${searchTerm}
    Then I should see the result page with title ${searchTerm}