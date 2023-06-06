*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome
*** Test Cases ***
Comparingproducts
        open browser  ${url}  ${browser}
        maximize browser window
        Set Selenium Speed    1second

        Click Element    xpath:/html/body/div[6]/div[2]/ul[1]/li[5]/a

        execute javascript  window.scrollTo(0,400)

        Click Element    xpath:/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[2]/div[2]/div/div/div[1]/div/div[2]/div[3]/div[2]/button[2]

        Click Element    xpath:/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[2]/div[2]/div/div/div[2]/div/div[2]/div[3]/div[2]/button[2]

        Click Element    xpath://*[@id="bar-notification"]/div/p/a

        execute javascript  window.scrollTo(0,250)

        close browser