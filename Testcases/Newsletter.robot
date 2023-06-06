*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome
*** Test Cases ***
Newsletter
    open browser  ${url}  ${browser}
    maximize browser window
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    sleep  4
    Click Element    xpath://*[@id="newsletter-email"]
    Input Text  id:newsletter-email  cbhargav@hotmail.com
    Click Element    xpath://*[@id="newsletter-subscribe-button"]
    close browser
