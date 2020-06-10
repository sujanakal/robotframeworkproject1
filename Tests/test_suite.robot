*** Settings ***
Documentation       This is basic information about the Suite
Library             SeleniumLibrary
Resource            ../resources/data/TestData.robot


*** Variables ***
${mainpage_header_xpath}        xpath://*[@id="a-page"]/header
${search_inputbox_locator}      id:twotabsearchtextbox
${search_button_xpath}          xpath://*[@id="nav-search"]/form/div[2]/div/input
${search_resultdiv_xpath}       xpath://*[@id="search"]/div[2]/div[2]/div/div[2]


*** Test Cases ***
Test Case: To verify user is able to search the product in Amazon.in
    [Documentation]    Searching product in MFT Portal
    [Tags]    Smoke

    Open Browser     ${amazonurl}   chrome
    Maximize Browser Window
    log to console      Page opened
    wait until element is visible    ${mainpage_header_xpath}
    click element    ${search_inputbox_locator}
    input text    ${search_inputbox_locator}     ${product_name}
    sleep    5s
    click button        ${search_button_xpath}
#    wait until element is visible       ${search_resultdiv_xpath}
    log to console    Searched the element
    sleep    5s
    Close All Browsers



*** Keywords ***

