*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
MouseOperations
    #Right click action
    open browser  http://swisnl.github.io/jQuery-contextMenu/demo.html  chrome
    maximize browser window
    open context menu  xpath://span[contains(text(),'right click me')]
    sleep  3

    #Double click action
    go to  https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element  xpath://*[@id="HTML10"]/div[1]/button
    sleep  3

    #Drag and drop
    go to  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop  id:box6  id:box106
    sleep  5

    close browser