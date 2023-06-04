*** Settings ***
Library   SeleniumLibrary
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}   https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm#

*** Test Cases ***
Testing radio buttons and check boxes
        open browser  ${url}  ${browser}
        maximize browser window
        set selenium speed  2seconds
        select radio button  sex   Female
        select radio button  exp   7
        select checkbox  Automation Tester
        select checkbox  Manual Tester
        unselect checkbox  Manual Tester

        close browser