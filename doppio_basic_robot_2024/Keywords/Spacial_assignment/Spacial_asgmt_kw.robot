*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Keywords ***

VALIDATE AGE
    [Arguments]    ${age}
    BuiltIn.Run Keyword If    ${age}>=18    BuiltIn.Log    Eligible for voting    WARN
    ...    ELSE    BuiltIn.Log    Not eligible for voting    WARN


PRINT FRUITS
    [Arguments]    @{fruits}
    FOR    ${fruit}    IN    @{fruits}
        BuiltIn.Run Keyword If    '${fruit}'=='apple' or '${fruit}'=='banana' or '${fruit}'=='cherry'      BuiltIn.Log   ${fruit}    WARN
        ...    ELSE    BuiltIn.Log    Not in list!    WARN
    END


PRINT USER INFO
    [Arguments]    &{user_info}
    BuiltIn.Log    Name: ${user_info["name"]}    WARN
    BuiltIn.Log    Age: ${user_info["age"]}      WARN
    BuiltIn.Log    City: ${user_info["city"]}    WARN


GREET USER
    [Arguments]    ${name}=Guest
    BuiltIn.Log    Hello, ${name}    WARN


PRINT ALL ITEM
    [Arguments]    @{items}
    FOR  ${item}    IN    @{items} 
        BuiltIn.Log   ${item}    WARN
    END


GLOBAL VS LOCAL
    BuiltIn.Set Local Variable    ${LOCAL_VAR}    Local Value
    BuiltIn.Log    ${LOCAL_VAR}     WARN
    BuiltIn.Log    ${GLOBAL_VAR}    WARN


CALCULATE SQUAR
    [Arguments]    ${number}
    ${result}    BuiltIn.Evaluate    ${number}*${number}
    BuiltIn.Return From Keyword    ${result}


CREATE FRUIT LIST
    ${fruits}    BuiltIn.Create List    @{fruits} 
    BuiltIn.Return From Keyword    ${fruits}


CREATE USER INFO
    &{user_info}    BuiltIn.Create Dictionary    name=John    age=30    city=Bangkok 
    BuiltIn.Return From Keyword    &{user_info}


CALCULATE FACTORIAL
    [Arguments]    ${number}
    ${number}    BuiltIn.Convert To Integer    ${number}
    BuiltIn.Run Keyword If    ${number} == 1    BuiltIn.Return From Keyword    1
    ${previous}=    CALCULATE FACTORIAL    ${number - 1}
    ${result}=      BuiltIn.Evaluate       ${number} * ${previous}
    BuiltIn.Return From Keyword            ${result}


KEYWORD WITH TEARDOWN
    [Teardown]    BuiltIn.Log    Keyword Teardown is running    WARN
    BuiltIn.Log    Running the keyword    WARN