*** Settings ***
Resource  ./config.robot

Suite Setup  Set Log level  TRACE 
Test Setup   Open Browser   ${URL}   ${BROWSER}
Test Teardown  Close Browser

*** Variables ***

*** Test Cases ***
Test - Simple Test
    Wait Until Page Contains Element    xpath://a[@class="header-business__logo"]  10s
    Wait Until Element Is Visible      xpath://a[@class="header-business__logo"]  10s  

    Wait Until Page Contains Element    id:login-username  10s
    Wait Until Element Is Visible       id:login-username  10s

