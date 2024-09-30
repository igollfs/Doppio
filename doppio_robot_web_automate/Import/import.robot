*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    Collections
Library    String


# Keywords
Resource    ${CURDIR}/../Keywords/Common_keyword.robot    # robotcode: ignore
Resource    ${CURDIR}/../Keywords/page/Login_keyword.robot    # robotcode: ignore
Resource    ${CURDIR}/../Keywords/page/Registration_keyword.robot

# Locator
Resource    ${CURDIR}/../Locator/Login_locator.robot
Resource    ${CURDIR}/../Locator/Registration_locator.robot

# yaml
Variables    ${CURDIR}/../Resource/Setting/${env}/env_config.yaml
Variables    ${CURDIR}/../Resource/Data/verify.yaml
Variables    ${CURDIR}/../Resource/Data/testdata.yaml


*** Variables ***
${env}=    uat    # default