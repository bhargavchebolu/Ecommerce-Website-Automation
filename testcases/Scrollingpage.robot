*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}  chrome
*** Test Cases ***
Scrolling Page
    open browser  ${url}  ${browser}
    maximize browser window
    #execute javascript  window.scrollTo(0,2500)
    #scroll element into view  xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    sleep  4
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    sleep  3
    close browser