*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***
TabledemoValidations
    open browser  https://testautomationpractice.blogspot.com/  chrome
    maximize browser window
    ${rows}=  get element count  xpath://body/div[4]/div[2]/div[2]/div[2]/footer[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody/tr
    ${columns}=  get element count  xpath://body/div[4]/div[2]/div[2]/div[2]/footer[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody/tr[1]/th

    log to console  ${rows}
    log to console  ${columns}

    ${data}=  get text  xpath://body/div[4]/div[2]/div[2]/div[2]/footer[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody/tr[5]/td[1]
    log to console  ${data}