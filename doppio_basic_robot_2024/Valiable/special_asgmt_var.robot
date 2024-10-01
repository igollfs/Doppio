*** Settings ***
Resource    ${CURDIR}/../Import/import.robot

*** Variables ***

@{fruits}    apple    banana    cherry    # fix list
&{user_info}    name=igollfs    age=18    city=bangkok

# yaml
${yaml_user_name}    ${yaml_user}[name]
${yaml_user_age}     ${yaml_user}[age]
${yaml_user_city}    ${yaml_user}[city]

# global
${Global_var}    # global TC_assignment_06