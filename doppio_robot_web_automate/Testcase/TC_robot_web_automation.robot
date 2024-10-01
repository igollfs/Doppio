*** Settings ***
Resource    ${CURDIR}/../Import/import.robot
Suite Setup    Common_feature.Set feature - open website and click the icon user login
Suite Teardown    SeleniumLibrary.Close All Browsers
Test Teardown    BuiltIn.Sleep    04s

*** Test Cases ***

Open website and register new account
    [Tags]    register
    common_feature.Set feature - click the button signup and input data to prepare the register    ${regis.email}    ${regis.password}    ${regis.confirm_password}    
    registration_page.Click btn sign up
    Set feature - click logout form page account


Login with the registered account
    [Tags]    login
    common_feature.set feature - login web doppee    ${login.username}    ${login.password}
    login_page.Click btn login

    BuiltIn.Sleep    02s
    home_search_page.Input text to field search    ${data_test}[search_keyword]
    home_search_page.Click btn search
    home_search_page.Select item collection for add to card
    home_search_page.Click btn add to card
    delivery_info_page.Click icon shopping card