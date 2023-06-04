*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
RegTest
    open browser  http://demowebshop.tricentis.com/register  chrome
    maximize browser window
    ${time}=  get selenium timeout
    log to console  ${time}
    set selenium timeout  10seconds
    wait untill page contains  Registration
    select radio button  Gender  M
    input text  name:FirstName  Mahesh
    input text  name:LastName  Babu
    input text  name:Email  Mahesh@gmail.com
    input text  name:Password  Mahesh
    input text  name:ConfirmPassword  Mahesh
    close browser

