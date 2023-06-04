*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm#
*** Test Cases ***
Handling dropdowns
        open browser   ${url}   ${browser}
        maximize browser window
        select from list by label  continents  Asia
        sleep  6
        select from list by index  continents  4
        select from list by label  selenium_commands  Wait Commands
        select from list by label  selenium_commands  Switch Commands
        unselect from list by label  selenium_commands  Wait Commands