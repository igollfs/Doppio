*** Variables ***

${paymentsel.btn_next_locator}            xpath=//button[@class='css-eq3tly ant-btn ant-btn-primary ant-btn-dangerous']
${paymentsel.redio_btn_pament_locator}    xpath=//input[@class='ant-radio-input' and @value='creditCard']

${paymtdt.card_number_locator}         id=basic_bin
${paymtdt.expire_date_locator}         id=basic_exp
${paymtdt.cvc_code_locator}            id=basic_cvc
${paymtdt.card_onwer_locator}          id=basic_owner
${paymtdt.btn_conf_paymt_locator}      xpath=//button[@class='css-eq3tly ant-btn ant-btn-primary button-login']
${paymtdt.get_txt_order_id_locator}    xpath=//div[@class='success-description']
${paymtdt.contn_to_shpping_locator}    xpath=//button[@class='css-eq3tly ant-btn ant-btn-link']

# *** note ***
# paymt = payment
# paymtdt = payment details
# contn = continue