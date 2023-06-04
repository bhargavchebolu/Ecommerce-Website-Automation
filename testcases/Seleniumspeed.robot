*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
RegTest
    ${speed}=  get selenium speed
    log to console  ${speed}

    open browser  http://demowebshop.tricentis.com/register  chrome
    maximize browser window
    set selenium speed  3seconds
    select radio button  Gender  M
    input text  name:FirstName  Mahesh
    input text  name:LastName  Babu
    input text  name:Email  Mahesh@gmail.com
    input text  name:Password  Mahesh
    input text  name:ConfirmPassword  Mahesh

    ${speed}=  get selenium speed
    log to console  ${speed}
    close browser

