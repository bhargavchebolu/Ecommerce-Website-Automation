*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome
*** Test Cases ***
Shoppingshoe
        open browser  ${url}  ${browser}
        maximize browser window
        Set Selenium Speed    2seconds
        #changing the currency
        Select From List By Label    customerCurrency  Euro
        #selecting Apparel
        Click Element    xpath:/html/body/div[6]/div[2]/ul[1]/li[3]/a
        #selecting Shoes
        Click Element    xpath:/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[1]/div/div[1]/div/div/a/img
        #scrolling down little bit
        execute javascript  window.scrollTo(0,350)
        #selecting adidas running shoes
        Click Element    xpath:/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[2]/div[2]/div/div/div[1]/div/div[2]/h2/a
        #scrolling down little bit
        execute javascript  window.scrollTo(0,350)
        #selecting size of 9
        Select From List By Label    product_attribute_9  9
        #selecting the address to ship
        Click Element    xpath://*[@id="open-estimate-shipping-popup-25"]/span
        #selecting the country and entering zipcode
        Select From List By Label    CountryId  Germany
        input text  id:ZipPostalCode  70000
        #Changing shipping option
        Click Element    xpath://*[@id="estimate-shipping-popup-25"]/div[5]/button
        #Adding the shoes to the cart
        Click Element    xpath://*[@id="add-to-cart-button-25"]
        #Selecting shopping cart to see the product
        Click Element    xpath://*[@id="bar-notification"]/div/p/a
        #Going back to main website
        Click Element    xpath:/html/body/div[6]/div[1]/div[2]/div[1]/a/img
        #Closing the browser
        Close Browser
