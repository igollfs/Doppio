*** Settings ***
Resource    ${CURDIR}/../Import/import.robot

*** Keywords ***

Wait element and click element
    [Arguments]    ${locator}    ${time}=15s
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    ${time}
    SeleniumLibrary.Scroll Element Into View    ${locator}
    BuiltIn.Wait Until Keyword Succeeds    3x    2s    SeleniumLibrary.Click Element    ${locator}


Open Website
    SeleniumLibrary.Open Browser    ${url_env}    chrome    # robotcode: ignore
    SeleniumLibrary.Maximize Browser Window


Verify modal confirm message and click button ok
    [Arguments]    ${locator}    ${message_ver}    ${message_log_fail}    ${timeout}=05s
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    ${timeout}
    ${value}    SeleniumLibrary.Get Text    ${locator}  
    ${result}    BuiltIn.Run Keyword And Return Status    BuiltIn.Should Be Equal    ${value}    ${message_ver}
    Log    ${result}    WARN
    BuiltIn.Run Keyword If    ${result}==True    Wait element and click element    ${common.modal_confirm_btn_locator}
    BuiltIn.Run Keyword If    ${result}==False    BuiltIn.Fail    ${message_log_fail}


Replace text to locator
    [Arguments]    ${locator}    ${text}
    ${rep_done}    String.Replace String    ${locator}    ***replace***    ${text}
    RETURN    ${rep_done}


Get text
    [Arguments]    ${locator}    ${timeout}=05s
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    ${timeout}
    ${value}    SeleniumLibrary.Get Text    ${locator}
    ${value}=    String.Replace String    ${value}    \n    ""  # ลบ \n ออก
    ${parts}=    String.Split String    ${value}    TOTAL:  # แยกตาม TOTAL:
    ${order_id}=    String.Replace String    ${parts}[0]    ORDER ID:    ""  # ตัด "ORDER ID: " ออก
    ${order_id}=    String.Replace String    ${order_id}    "  "    " "   # ทำซ้ำถ้าจำเป็น
    ${order_id}=    String.Replace String    ${order_id}    " "    ""  # ลบช่องว่างที่เหลือ
    ${order_id}=    String.Replace String    ${parts}[0]    ORDER ID:    ""
