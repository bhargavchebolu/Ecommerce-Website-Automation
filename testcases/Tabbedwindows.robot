*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***
TabbedWindowstest
    open browser   http://demo.automationtesting.in/Windows.html  chrome
    maximize browser window
    click element  xpath://*[@id="Tabbed"]/a/button
    select window  https://www.selenium.dev/  chrome
    click element  xpath://*[@id="main_navbar"]/ul/li[4]/a/span
    sleep  3
    close all browsers
