*** Settings ***
Library   SeleniumLibrary
*** Variables ***
${url}  https://demo.guru99.com/test/newtours/
${browser}  chrome
*** Test Cases ***
Getalllinks
    open browser  ${url}  ${browser}
    maximize browser window
    ${alllinkscount}=  get element count  xpath://a
    log to console  ${alllinkscount}

    @{linkitems}  create list
    FOR  ${i}  IN RANGE  1  ${alllinkscount}+1
      ${linktext}=  get text  xpath:(//a)[${i}]
      log to console   ${linktext}
    END