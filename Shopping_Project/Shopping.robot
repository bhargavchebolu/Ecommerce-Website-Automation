*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome
*** Test Cases ***
Shoppingsmartphone
    open browser  ${url}  ${browser}
    maximize browser window
    shopping
    close browser
*** Keywords ***
shopping
    click element  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    input text  id:Email  cbhargav@hotmail.com
    input text  id:Password    bhargav123
    click element  xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button
    sleep  3
    click element  xpath:/html/body/div[6]/div[2]/ul[1]/li[2]/a
    click element  xpath:/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[1]/div/div[2]/div/h2/a
    click element  xpath:/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[2]/div[2]/div/div/div[3]/div/div[2]/h2/a
    sleep  2
    click element  xpath://*[@id="add-to-cart-button-20"]
    click element  xpath:/html/body/div[6]/div[2]/ul[1]/li[2]/a
    click element  xpath:/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[1]/div/div[2]/div/h2/a
    click element  xpath:/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[2]/div[2]/div/div/div[2]/div/div[2]/h2/a
    click element  xpath://*[@id="add-to-cart-button-19"]
    sleep  5
    click element  xpath://*[@id="topcartlink"]/a/span[1]
    sleep  5
    click element  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    sleep  5
