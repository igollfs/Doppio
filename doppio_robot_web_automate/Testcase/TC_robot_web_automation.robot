*** Settings ***
Resource    ${CURDIR}/../Import/import.robot
Suite Setup    Common_feature.Set feature - open website and click the icon user login
# Suite Teardown    SeleniumLibrary.Close All Browsers
Test Teardown    BuiltIn.Sleep    04s

*** Test Cases ***

Open website and register new account
    [Tags]    register
    common_feature.Set feature - click the button signup and input data to prepare the register    ${regis.email}    ${regis.password}    ${regis.confirm_password}    
    registration_page.Click btn sign up


Login with the registered account and shopping phone
    [Tags]    login
    common_feature.set feature - login web doppee    ${login.username}    ${login.password}
    login_page.Click btn login
    BuiltIn.Sleep    ${global_timeout}
    home_search_page.Input text to field search    ${data_test}[search_keyword]
    home_search_page.Click btn search
    home_search_page.Select item collection for add to card
    home_search_page.Click the button add to cart
    delivery_info_page.Click icon shopping card
    delivery_info_page.Input name delivery info                ${delivery_info}[name]
    delivery_info_page.Input surname delivery info             ${delivery_info}[surname]
    delivery_info_page.Input shipping address delivery info    ${delivery_info}[shipping_address]
    delivery_info_page.Input phone number delivery info        ${delivery_info}[phone_number]
    delivery_info_page.Click button pay
    payment_page.select payment method    ${sel_payment_method}[credit_value]
    payment_page.Click the button next
    payment_page.Input card number payment details    ${sel_payment_details}[credit_card]
    payment_page.Input expire date payment details    ${sel_payment_details}[expire_date]
    payment_page.Input cvc code payment details       ${sel_payment_details}[cv_code]
    payment_page.Input card owner payment details     ${sel_payment_details}[card_owner]
    payment_page.Click button confirm payment details
    payment_page.Verify payment complete message
    Debug
    payment_page.Get order id payment complete
    # home_search_page.Click icon user login
