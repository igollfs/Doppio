*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot

*** Keywords ***

Verify payment status order details
    [Arguments]    ${timeout}=05s

    FOR  ${i}  IN RANGE    1    6
    ${status}    BuiltIn.Run Keyword And Return Status    SeleniumLibrary.Wait Until Element Is Visible    ${detailsorder.text_paid}    ${timeout}
        
        IF  ${status}==True
            BuiltIn.Log    case pass, status order = PAID
        ELSE
            SeleniumLibrary.Reload Page
            BuiltIn.Sleep    02s
            BuiltIn.Continue For Loop
        END
    END
    