*** Settings ***
Resource  ./config.robot

Suite Setup  Set Log level  TRACE 
Test Setup   Open Browser   ${URL}   ${BROWSER}
Test Teardown  Close Browser

*** Variables ***

*** Test Cases ***
Test - Simple Test
    Wait Until Page Contains Element    xpath://header/img  10s
    Wait Until Element Is Visible      xpath://header/img  10s  

    Wait Until Page Contains Element    xpath://a[text()="Learn React Ciao 3"]  10s
    Wait Until Element Is Visible      xpath://a[text()="Learn React Ciao 3"]  10s

