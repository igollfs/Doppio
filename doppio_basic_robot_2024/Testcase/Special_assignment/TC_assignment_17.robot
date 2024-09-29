*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 17
    [Documentation]    Setup & Teardown
    [Setup]    SeleniumLibrary.Open Browser    http://example.com    chrome
    BuiltIn.Log    Test is running
    [Teardown]    Close Browser