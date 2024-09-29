*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Keywords ***

ROBOT WEB AT - OPEN DOPPEE
    SeleniumLibrary.Open Browser    url=${URL_training_platform_doppio}    browser=chrome
    SeleniumLibrary.Maximize Browser Window