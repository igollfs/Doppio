*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Test Cases ***

TC ASSIGNMENT 7
    [Documentation]    To fetch variables from a YAML file
    BuiltIn.Log    ${yaml_user_name}    WARN
    BuiltIn.Log    ${yaml_user_age}     WARN
    BuiltIn.Log    ${yaml_user_city}    WARN