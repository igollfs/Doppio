*** Settings ***
Resource    ${CURDIR}/../../Import/import.robot


*** Variables ***
${number_score}   90   # Please enter a number between 0 and 100 only.


*** Test Cases ***

TC - Calculate the grade
    ${value}    Calculate_grade_kw.Validate input number    ${number_score}
    Calculate_grade_kw.Calulate grade    score=${value}