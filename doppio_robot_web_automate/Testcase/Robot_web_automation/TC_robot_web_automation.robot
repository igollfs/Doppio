*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot
Suite Setup    robot_web_automation_keyword.ROBOT WEB AT - OPEN DOPPEE
Suite Teardown    SeleniumLibrary.Close All Browsers
Test Teardown    BuiltIn.Sleep    02s

*** Test Cases ***

DOPPEE REGIS
    common_keyword.WAIT ELEMENT AND CLICK LOCATOR    locator=${doppee_icon_user_locator}
    common_keyword.WAIT ELEMENT AND CLICK LOCATOR    locator=${dopee_btn_sign_up_locator}