*** Settings ***
Resource    ${CURDIR}/../Import/import.robot
Suite Teardown    SeleniumLibrary.Close All Browsers
Test Teardown    BuiltIn.Sleep    02s

*** Test Cases ***

OPEN WEBSITE DOPPEE REGIS AND REGISTER
    [Tags]
    [Documentation]
    Common_keyword.COMMON - OPEN WEBSITE
    Login_keyword.CLICK ICON USER LOGIN
    Login_keyword.CLICK THE BUTTON SIGN UP ON THE PAGE LOGIN
    Registration_keyword.INPUT EMAL ADDRESS FOR REGISTER            ${registration}[email]
    Registration_keyword.INPUT PASSWORD FOR REGISTER                ${registration}[password]
    Registration_keyword.INPUT CONFIRM PASSWORD FOR REGISTER        ${registration}[confirm_password]