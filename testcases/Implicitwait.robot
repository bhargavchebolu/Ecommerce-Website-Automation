*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
RegTest
    open browser  http://demowebshop.tricentis.com/register  chrome
    maximize browser window
    ${implicitwait}=  get selenium implicit wait
    log to console  ${implicitwait}
    set selenium implicit wait  10 seconds
    ${implicitwait}=  get selenium implicit wait
    log to console  ${implicitwait}
    select radio button  Gender  M
    input text  name:FirstName1  Mahesh
    input text  name:LastName  Babu
    input text  name:Email  Mahesh@gmail.com
    input text  name:Password  Mahesh
    input text  name:ConfirmPassword  Mahesh

    close browser

