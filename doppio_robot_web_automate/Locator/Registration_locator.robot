*** Settings ***
Resource    ${CURDIR}/../Import/import.robot

*** Variables ***

${regis.input_email}           id=basic_username
${regis.input_pass}            id=basic_password
${regis.input_confirm_pass}    id=basic_confirmPassword
${regis.btn_signup}            xpath=//button[@class='css-eq3tly ant-btn ant-btn-primary button-login']


# yaml
${regis.email}               ${registration}[email]
${regis.password}            ${registration}[password]
${regis.confirm_password}    ${registration}[confirm_password]