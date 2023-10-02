# =============================================================
*** Settings ***
# =============================================================

Documentation    BeonTech

Resource         ../resources/global.robot
Resource         ../resources/google/keywords.robot

Test Teardown    Close All Browsers

# =============================================================
*** Variables ***
# =============================================================

${searchTerm}    Software Testing

# =============================================================
*** Test Cases ***
# =============================================================

Valid Search

    [Tags]    smoke
    [Documentation]    This script validates a simple Google search action

    Given I open google home
    When I search for the term ${searchTerm}
    Then I should see one search result

Search Result Navigation

   [Tags]    smoke
   [Documentation]    This script validates when a user performs a Google search and finds the correct page in ther esults

   Given I open google home
   When I search for the term ${searchTerm}
   And I open the Wikipedia Result
   Then I should be on the correct page