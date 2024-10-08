*** Settings ***
Resource    ${CURDIR}/../Import/import.robot

*** Keywords ***

Wait element and click locator
    [Arguments]    ${locator}    ${time}=15s
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    ${time}
    SeleniumLibrary.Scroll Element Into View    ${locator}
    BuiltIn.Wait Until Keyword Succeeds    3x    2s    SeleniumLibrary.Click Element    ${locator}