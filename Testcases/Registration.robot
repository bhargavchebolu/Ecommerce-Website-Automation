*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome
*** Test Cases ***
Registration
    open browser  ${url}  ${browser}
    maximize browser window
    Register
    close browser
*** Keywords ***
Register
    click element  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a
    sleep  3
    select radio button  Gender   M
    input text  id:FirstName  Bhargav Anand
    input text  id:LastName   Chebolu
    select from list by index  DateOfBirthDay  20
    select from list by index  DateOfBirthMonth  3
    select from list by index  DateOfBirthYear  86
    input text  id:Email  cbhargav@hotmail.com
    input text  id:Password       bhargav123
    input text  id:ConfirmPassword     bhargav123
    click element  xpath://*[@id="register-button"]
    click element  xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[2]/a
    click element  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
