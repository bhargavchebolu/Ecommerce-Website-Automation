*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}      https://login.xing.com/
*** Test Cases ***
LoginTest
    open browser   ${url}   ${browser}
    maximize browser window
    click element  xpath://*[@id="consent-accept-button"]/div/span
    loginToApplication
    sleep  5
    close browser
*** Keywords ***
loginToApplication
    input text  id:username   bhargavchebolu@gmail.com
    input text  id:password   Xsaihanu.2
    click element  xpath://span[contains(text(),'Log in')]
