*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot
Test Teardown    SeleniumLibrary.Close All Browsers

*** Test Cases ***

TC ASSIGNMENT 8
    [Documentation]    Preload Variables form YAML 
    SeleniumLibrary.Open Browser      url=${app_url}    browser=chrome
    SeleniumLibrary.Input Text        username_field    ${credentials}[username]
    SeleniumLibrary.Input Password    password_field    ${credentials}[password]