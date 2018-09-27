*** Settings ***
Documentation                       This is a basic test
Library                             Selenium2Library
Test Setup                          Open Browser  ${GOOGLE URL}  ${BROWSER}
Test Teardown                       Close All Browsers
# Suite Setup                         Open Browser  ${GOOGLE URL}  ${BROWSER}
Suite Teardown                      Log to console  THE END!!!

*** Variables ***
${GOOGLE URL}                       https://www.google.com/
${BROWSER}                          chrome


*** Keywords ***
# เข้าไป google
#     Open Browser                    ${GOOGLE URL}    ${BROWSER}
ค้นหาคำว่าสวัสดี
    Input Text                      lst-ib    สวัสดี
    Click Button                    btnK
รอจนกว่าจะเจอคำว่าสวัสดีตอนเช้า
    Wait Until Page Contains        สวัสดีตอนเช้า
เปิดหน้า youtube
    Go To                    https://www.youtube.com/
capture หน้าจอ
    [Arguments]  ${index}
    Log to console  test case No.${index}
    Capture Page Screenshot  filename=TestcasesNo.${index}.png 

*** Testcases ***
Search
    # เข้าไป google
    ค้นหาคำว่าสวัสดี
    รอจนกว่าจะเจอคำว่าสวัสดีตอนเช้า
    capture หน้าจอ   index=1
E-hour
    เปิดหน้า youtube
    capture หน้าจอ   index=2
# Test Teardown   
#     Close Browser