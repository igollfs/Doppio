*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot
Test Teardown    SeleniumLibrary.Close All Browsers

*** Test Cases ***

TC ASSIGNMENT 8
    [Documentation]    Preload Variables form YAML 
    BuiltIn.Run Keyword And Ignore Error    SeleniumLibrary.Open Browser      url=${app_url}    browser=chrome
    BuiltIn.Run Keyword And Ignore Error    SeleniumLibrary.Input Text        username_field    ${credentials}[username]
    BuiltIn.Run Keyword And Ignore Error    SeleniumLibrary.Input Password    password_field    ${credentials}[password]