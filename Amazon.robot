*** Settings ***
Documentation  This is basic info about the whole suite.
Library  SeleniumLibrary

# robot /home/tj/PycharmProjects/demo/Tests/Amazon.robot

*** Variables ***
*** Test Cases ***
User must sign in to check out
    [Documentation]  This is basic info about the test.

    Open Browser    https://www.amazon.com  ff
    Sleep  3s
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Sleep  3s
    Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains    results for "Ferrari 458"
    SLEEP  5
    Close Browser

    open browser    https://www.amazon.com  chrome
    sleep  3
    input text      id=twotabsearchtextbox  Reebok leather
    sleep  3
    click button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains    results for "Reebok leather"
    sleep   3
    close browser
*** Keywords ***



