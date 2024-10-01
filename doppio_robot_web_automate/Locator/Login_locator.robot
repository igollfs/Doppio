*** Settings ***
Resource    ${CURDIR}/../Import/import.robot

*** Variables ***

${login.btn_sign_up_locator}       xpath=//button[@class='css-eq3tly ant-btn ant-btn-default button-login']
${login.regis_usernam_locator}     //input[@class='ant-input css-eq3tly']/ancestor::div//label[@title='Username']
${login.input_username_locator}    xpath=//input[@class='ant-input css-eq3tly'][@type='text']
${login.input_password_locator}    xpath=//input[@class='ant-input css-eq3tly'][@type='password']
${login.btn_login_locator}         xpath=//button[@class='css-eq3tly ant-btn ant-btn-primary button-login']

# yaml
${login.username}    ${registration}[email]
${login.password}    ${registration}[password]