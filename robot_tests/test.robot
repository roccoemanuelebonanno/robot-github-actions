*** Settings ***
Library  SeleniumLibrary 


*** Test Cases ***
Test Browser
    Open Browser   https://google.it   headlesschrome
    Wait Until Page Contains Element  //img[@id="hplogo"]   10s 
    Wait Unttil Element Is Visible    //img[@id="hplogo"]   10s 
