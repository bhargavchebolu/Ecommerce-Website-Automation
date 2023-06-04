*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***
Testing frames
    open browser  https://seleniumhq.github.io/selenium/docs/api/java/index   chrome

    select frame  packageListFrame
    click link  org.openqa.selenium
    unselect frame

    select frame  packageFrame
    click link  WebDriver
    unselect frame

    select frame  ClassFrame
    click link  Help
    unselect frame

    close browser

