*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Keywords ***

Validate age
    [Arguments]    ${age}
    BuiltIn.Run Keyword If    ${age}>=18    BuiltIn.Log    Eligible for voting    WARN
    ...    ELSE    BuiltIn.Log    Not eligible for voting    WARN


Print fruits
    [Arguments]    @{fruits}
    FOR    ${fruit}    IN    @{fruits}
        BuiltIn.Run Keyword If    '${fruit}'=='apple' or '${fruit}'=='banana' or '${fruit}'=='cherry'      BuiltIn.Log   ${fruit}    WARN
        ...    ELSE    BuiltIn.Log    Not in list!    WARN
    END


Print user info
    [Arguments]    &{user_info}
    BuiltIn.Log    Name: ${user_info["name"]}    WARN
    BuiltIn.Log    Age: ${user_info["age"]}      WARN
    BuiltIn.Log    City: ${user_info["city"]}    WARN


Greet user
    [Arguments]    ${name}=Guest
    BuiltIn.Log    Hello, ${name}    WARN


Print all item
    [Arguments]    @{items}
    FOR  ${item}    IN    @{items} 
        BuiltIn.Log   ${item}    WARN
    END


Global vs local
    BuiltIn.Set Local Variable    ${LOCAL_VAR}    Local Value
    BuiltIn.Log    ${LOCAL_VAR}     WARN
    BuiltIn.Log    ${Global_var}    WARN


Calculate squat
    [Arguments]    ${number}
    ${result}    BuiltIn.Evaluate    ${number}*${number}
    BuiltIn.Return From Keyword    ${result}


Create fruit list
    ${fruits}    BuiltIn.Create List    @{fruits} 
    BuiltIn.Return From Keyword    ${fruits}


Create user info
    &{user_info}    BuiltIn.Create Dictionary    name=John    age=30    city=Bangkok 
    BuiltIn.Return From Keyword    &{user_info}


Calulate Factorial
    [Arguments]    ${number}
    ${number}    BuiltIn.Convert To Integer    ${number}
    BuiltIn.Run Keyword If    ${number} == 1    BuiltIn.Return From Keyword    1
    ${previous}=    Calulate Factorial    ${number - 1}
    ${result}=      BuiltIn.Evaluate       ${number} * ${previous}
    BuiltIn.Return From Keyword            ${result}


Keyword with teardown
    [Teardown]    BuiltIn.Log    Keyword Teardown is running    WARN
    BuiltIn.Log    Running the keyword    WARN