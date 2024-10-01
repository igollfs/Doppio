*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    Collections
Library    String


# Keywords
Resource    ${CURDIR}/../Keywords/common_keyword.robot
Resource    ${CURDIR}/../Keywords/page/home_search_page.robot
Resource    ${CURDIR}/../Keywords/page/login_page.robot
Resource    ${CURDIR}/../Keywords/page/registration_page.robot
Resource    ${CURDIR}/../Keywords/page/account_page.robot
Resource    ${CURDIR}/../Keywords/page/delivery_info_page.robot

# Locator
Resource    ${CURDIR}/../Locator/common_locator.robot
Resource    ${CURDIR}/../Locator/home_search_locator.robot
Resource    ${CURDIR}/../Locator/login_locator.robot
Resource    ${CURDIR}/../Locator/registration_locator.robot
Resource    ${CURDIR}/../Locator/account_locator.robot
Resource    ${CURDIR}/../Locator/delivery_info_locator.robot

# Feature
Resource    ${CURDIR}/../Keywords/Feature/common_feature.robot

# yaml
Variables    ${CURDIR}/../Resource/Setting/${env}/env_config.yaml
Variables    ${CURDIR}/../Resource/Data/verify.yaml
Variables    ${CURDIR}/../Resource/Data/testdata.yaml


*** Variables ***
${env}=    uat    # default