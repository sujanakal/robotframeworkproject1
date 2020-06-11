*** Settings ***
Documentation       This is basic information about the Suite
Library             SeleniumLibrary
Resource            ../resources/data/TestData.robot


*** Variables ***
${mainpage_header_locator}        xpath://*[@id="a-page"]/header
${search_inputbox_locator}      id:twotabsearchtextbox
${search_button_locator}          xpath://*[@id="nav-search"]/form/div[2]/div/input
${search_resultdiv_locator}       xpath://*[@id="search"]/div[2]/div[2]/div/div[2]
${first_result_locator}         xpath://*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div/div/span/a/div/img


*** Test Cases ***
Test Case: To verify user is able to search the product in Amazon.in
    [Documentation]    Searching product in MFT Portal
    [Tags]    Smoke

    Open Browser     ${amazonurl}   chrome
    Maximize Browser Window
    log to console      Page opened
    wait until element is visible    ${mainpage_header_locator}
    click element    ${search_inputbox_locator}
    input text    ${search_inputbox_locator}     ${product_name}
    sleep    5s
    click button        ${search_button_locator}
#    wait until element is visible       ${search_resultdiv_xpath}
    log to console    Searched the element
    sleep    5s
    Close All Browsers



*** Keywords ***

