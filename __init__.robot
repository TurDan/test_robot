*** Settings ***
Suite Setup       Init Setup
Suite Teardown    Init Teardown
Library           SeleniumLibrary

*** Keywords ***
Init Setup
    Log    Ten setup wykona się przed wszystkimi suitami w danym folderze
    Set Global Variable    ${URL}   https://stackoverflow.com/
    Set Global Variable    ${BROWSER} chrome

Init Teardown
    Log    Ten teardown wykona się po wszystkich suitach w danym folderze
    Close All Browsers