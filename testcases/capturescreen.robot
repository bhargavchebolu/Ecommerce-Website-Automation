*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
CapturingScreens
    open browser  https://www.youtube.com  chrome
    maximize browser window
    capture element screenshot  xpath://*[@id="logo-icon"]  D:/Python/Selenium/logo.png
    capture page screenshot   D:/Python/Selenium/page.png
    close browser
