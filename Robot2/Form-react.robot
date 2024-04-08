* Settings *
Library     SeleniumLibrary

* Variables *
${BROWSER}    Edge

${INPUT_FIRSTNAMETHA}    tin       
${INPUT_FirstnameENG}    ทินภัทร
${INPUT_IDCARD}          56789
${INPUT_PASSWORD}        kdlf9
${INPUT_EMAIL}           654259027@gmail.com 

${EXPECTED_FIRSTNAMETHA}    tin
${EXPECTED_FirstnameENG}    Must be in English only
${EXPECTED_IDCARD}          กรุณาใส่ให้ครบ 13 หลัก
${EXPECTED_PASSWORD}        กรุณาใส่ให้มันครบ 8 ตัว
${EXPECTED_EMAIL}           Email must contain specific domain name

* Test Cases *
Input ValidationNameThai
    [Documentation]    Test NameThai Input Validation
    Open Google ReactForm
    Input FirstnameTHA
    Click Element Field
    Verify FirstnameThai Results
    Close Browser

Input ValidationNameENG
    [Documentation]    Test NameENG Input Validation
    Open Google ReactForm
    Input FirstnameENG
    Click Element Field
    Verify FirstnameENG Results
    Close Browser

Input ValidationIDCARD
    [Documentation]    Test ID Card Input Validation
    Open Google ReactForm
    Input IdCard
    Click Element Field
    Verify IdCard Results
    Close Browser

Input ValidationEMAIL
    [Documentation]    Test Email Input Validation
    Open Google ReactForm
    Input Email
    Click Element Field
    Verify Email Results
    Close Browser

Input ValidationPASSWORD
    [Documentation]    Test Password Input Validation
    Open Google ReactForm
    Input Password
    Click Element Field
    Verify Password Results
    Close Browser

* Keywords *
Open Google ReactForm
    Open Browser    https://formik-react-2-0.vercel.app/    ${BROWSER}

Input FirstnameTHA
    Input Text    name=firstnameTha    ${INPUT_FIRSTNAMETHA}

Input FirstnameENG
    Input Text    name=firstnameEng    ${INPUT_FirstnameENG}

Input IdCard
    Input Text    name=idCard    ${INPUT_IDCARD}

Input Email
    Input Text    name=email    ${INPUT_EMAIL}

Input Password
    Input Text    name=password   ${INPUT_PASSWORD}

Click Element Field
    Click Element    id=lastnameEng

Verify FirstnameThai Results
    Wait Until Page Contains    ${EXPECTED_FIRSTNAMETHA}
    Page Should Contain    ${EXPECTED_FIRSTNAMETHA}
    Capture Page Screenshot    filename=screenshot_${TEST NAME}.png

Verify FirstnameENG Results
    Wait Until Page Contains    ${EXPECTED_FirstnameENG}
    Page Should Contain    ${EXPECTED_FirstnameENG}
    Capture Page Screenshot    filename=screenshot_${TEST NAME}.png

Verify IdCard Results
    Wait Until Page Contains    ${EXPECTED_IDCARD}
    Page Should Contain    ${EXPECTED_IDCARD}
    Capture Page Screenshot    filename=screenshot_${TEST NAME}.png

Verify Email Results
    Wait Until Page Contains    ${EXPECTED_EMAIL}
    Page Should Contain    ${EXPECTED_EMAIL}
    Capture Page Screenshot    filename=screenshot_${TEST NAME}.png

Verify Password Results
    Wait Until Page Contains    ${EXPECTED_PASSWORD}
    Page Should Contain    ${EXPECTED_PASSWORD}
    Capture Page Screenshot    filename=screenshot_${TEST NAME}.png