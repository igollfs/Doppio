*** Settings ***
Resource    ${CURDIR}/../Import/import.robot

*** Keywords ***

COMMON - WAIT ELEMENT AND CLICK ELEMENT
    [Arguments]    ${locator}    ${time}=15s
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    ${time}
    SeleniumLibrary.Scroll Element Into View    ${locator}
    BuiltIn.Wait Until Keyword Succeeds    3x    2s    SeleniumLibrary.Click Element    ${locator}


COMMON - OPEN WEBSITE
    SeleniumLibrary.Open Browser    ${url_env}    chrome    # robotcode: ignore
    SeleniumLibrary.Maximize Browser Window