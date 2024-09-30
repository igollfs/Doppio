*** Settings ***
Resource    ${CURDIR}/../Import/import.robot


*** Variables ***

${login.icon_user_locator}        xpath=//header[@class='ant-layout-header header']//span[@class='anticon anticon-user icon-size']
${login.btn_sign_up_locator}      xpath=//button[@class='css-eq3tly ant-btn ant-btn-default button-login']
${login.regis_usernam_locator}    //input[@class='ant-input css-eq3tly']/ancestor::div//label[@title='Username']
