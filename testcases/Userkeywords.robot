*** Settings ***
Library   SeleniumLibrary
*** Variables ***
${url}  https://demo.guru99.com/test/newtours/
${browser}  chrome
*** Test Cases ***
TC1
    ${PageTitle}=  launchBrowser  ${url}  ${browser}
    log to console  ${PageTitle}
    log   ${PageTitle}
    maximize browser window
    input text  name:userName  mercury
    input text  name:password  mercury

*** Keywords ***
launchBrowser
    [Arguments]  ${appurl}  ${appbrowser}
    open browser  ${appurl}  ${appbrowser}
    maximize browser window
    ${title}=  get title
    [Return]  ${title}