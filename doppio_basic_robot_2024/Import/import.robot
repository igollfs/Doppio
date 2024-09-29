*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    Collections
Library    String


# Keywords
Resource    ${CURDIR}/../Keywords/common_keyword.robot
Resource    ${CURDIR}/../Keywords/Calculate_grade/Calculate_grade_kw.robot
Resource    ${CURDIR}/../Keywords/Spacial_assignment/Spacial_asgmt_kw.robot


# Variables
Resource    ${CURDIR}/../Valiable/special_asgmt_var.robot

# yaml
Variables    ${CURDIR}/../Resource/Spacial_asgmt/variables.yaml
Variables    ${CURDIR}/../Resource/Spacial_asgmt/config.yaml