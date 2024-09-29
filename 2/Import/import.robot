*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    Collections
Library    String


# Keywords
Resource    ${CURDIR}/../Keywords/common_keyword.robot
Resource    ${CURDIR}/../Keywords/robot_web_automation/robot_web_automation_keyword.robot

# Locator
Resource    ${CURDIR}/../Locator/robot_web_automatio/robot_web_automation_loc.robot