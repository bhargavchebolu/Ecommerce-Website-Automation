*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Navigation
    open browser  https://www.facebook.com  chrome
    sleep  3
    go to  https://www.youtube.com
    sleep  3
    close browser