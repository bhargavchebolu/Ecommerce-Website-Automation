*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome
*** Test Cases ***
Communitypoll
        open browser  ${url}  ${browser}
        maximize browser window
        Set Selenium Speed    2seconds
        scroll element into view  xpath:/html/body/div[6]/div[4]/div[1]/div[2]/div/strong

        select radio button  pollanswers-1   1

        click element  xpath://*[@id="vote-poll-1"]

        close browser
