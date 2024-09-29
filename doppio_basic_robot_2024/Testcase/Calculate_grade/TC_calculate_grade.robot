*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Variables ***
${number_score}   90   # Please enter a number between 0 and 100 only.


*** Test Cases ***

TC - CALCULATE THE GRADE
    ${value}    Calculate_grade_kw.VALIDATE INPUT NUMBER    ${number_score}
    Calculate_grade_kw.CALCULATE GRADE    score=${value}