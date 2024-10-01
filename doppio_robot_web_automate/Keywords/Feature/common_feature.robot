*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot

*** Keywords ***


Set feature - open website and click the icon user login
    common_keyword.Open Website
    home_search_page.Click icon user login


Set feature - click the button signup and input data to prepare the register
    [Arguments]    ${email}    ${password}    ${confirm_password}
    login_page.Click the button sign up on the page login
    registration_page.Input email address for register            ${email}
    registration_page.Input password for register                ${password}
    registration_page.Input confirm password for register        ${confirm_password}


set feature - login web doppee
    [Arguments]    ${username}    ${password}
    login_page.Input username for login    ${username}
    login_page.Input password for login    ${password}

Set feature - click logout form page account
    home_search_page.CLICK ICON USER LOGIN
    account_page.Click button logout from page account
 
