*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Keywords ***

CALCULATE GRADE
    [Arguments]    ${score}        
            
        IF  ${score}>=101
            BuiltIn.Fail    \n-->Please enter a number <= 100.<--\n

        ELSE IF  ${score}>=90
            BuiltIn.Log To Console    \ngrade A\n
            
        ELSE IF  ${score}>=80
            BuiltIn.Log To Console    \ngrade B\n

        ELSE IF  ${score}>=70
            BuiltIn.Log To Console    \ngrade C\n

        ELSE IF  ${score}>=60
            BuiltIn.Log To Console    \ngrade D \n
        
        ELSE IF  ${score}<=59
            BuiltIn.Log To Console    \ngrade F\n
        
        END
                

VALIDATE INPUT NUMBER
    [Arguments]    ${number_score}
    
    ${is_number}=    BuiltIn.Run Keyword And Return Status    BuiltIn.Convert To Number    ${number_score}
    IF  ${is_number}==True        
        RETURN    ${number_score}    
    ELSE
        BuiltIn.Fail    Invalid input, not a number!
    END
