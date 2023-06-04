 #click element  xpath://*[@id="topcartlink"]/a/span[1]
    #click element  xpath://*[@id="termsofservice"]
    #click element  xpath://*[@id="checkout"]
    #select from list by label  BillingNewAddress.CountryId  Germany
    #input text  id:BillingNewAddress_City  Stuttgart
    #input text  id:BillingNewAddress_Address1  Entenweg
    #input text  id:BillingNewAddress_ZipPostalCode  533001
    #input text  id:BillingNewAddress_PhoneNumber   9876543210
    #click element  xpath://*[@id="billing-buttons-container"]/button[4]
    #click element  xpath://*[@id="shipping-method-buttons-container"]/button
    #click element  xpath://*[@id="payment-method-buttons-container"]/button
    #click element  xpath://*[@id="payment-info-buttons-container"]/button
    #sleep 3
    #click element  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a