*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
Test Place an Ad
    Set Appium Timeout  15
    Open Application 	http://localhost:4723/wd/hub 	automationName=UiAutomator2   platformName=Android 	platformVersion=8.0.0	deviceName=emulator-5554 	app=C:\\Users\\AbdElAziz\\PycharmProjects\\Appium\\AUT\\com.olxmena.horizontal_2020-08-16.apk
    Wait Until Page Contains Element    //android.widget.TextView[@text='Egypt']
    Click Element  //android.widget.TextView[@text='Egypt']
    Wait Until Page Contains Element    //android.widget.TextView[@text='Register Here']
    Go Back
    Wait Until Page Contains Element    //*[@class='android.widget.Button'][2]

    Click Element  //*[@class='android.widget.Button'][2]
    Wait Until Page Contains Element    //android.widget.TextView[@text='Place an Ad']
    Click Element  //android.widget.TextView[@text='Place an Ad']
    Wait Until Page Contains Element    //*[@class='android.widget.Button'][2]

    Click Element  //*[@class='android.widget.Button'][2]
    Click Element  //*[@class='android.widget.Button'][2]

    Wait Until Page Contains Element    //android.widget.TextView[@text='Properties']

    Click Element  //android.widget.TextView[@text='Properties']
    Click Element  //android.widget.TextView[@text='Villas For Sale']
    #propertyAd_fillAdTitle(loc_driver, title);
    Wait Until Page Contains Element    //android.widget.EditText[@text='Title']
    #Input Text  //android.widget.EditText[@text='Title']  myTitle
	#propertyAd_selectAdType(loc_driver);
	#Wait Until Page Contains Element    //android.widget.TextView[@text='Ad Type']
    #Click Element  //android.widget.TextView[@text='Ad Type']
    #Wait Until Page Contains Element    //android.widget.CheckedTextView[@text='For Sale']
    #Click Element  //android.widget.CheckedTextView[@text='For Sale']
	#propertyAd_selectType(loc_driver);
	#Wait Until Page Contains Element    //android.widget.TextView[@text='Type']
    #Click Element  //android.widget.TextView[@text='Type']
    #Wait Until Page Contains Element    //android.widget.CheckedTextView[@text='Stand Alone Villa']
    #Click Element  //android.widget.CheckedTextView[@text='Stand Alone Villa']
	#propertyAd_selectAdPrice(loc_driver, price);
	#Wait Until Page Contains Element    //android.widget.Button[@text='Price (EGP)']
    #Click Element  //android.widget.Button[@text='Price (EGP)']
    #Wait Until Page Contains Element    //android.widget.EditText[@resource-id='com.olxmena.horizontal:id/value']
    #Input Text  //android.widget.EditText[@resource-id='com.olxmena.horizontal:id/value']  200000
    #Click Element  //android.widget.CheckBox[@text='Price Negotiable']
    #Click Element  //android.widget.TextView[@text='OK']

		#scrollToSpecificElement(loc_driver, "Payment Option");
    #Wait Until Page Contains Element    //android.widget.Button[@text='Payment Option']
    #Scroll Up  xpath=//android.widget.TextView[@text='Payment Option']
    #Swipe 	200 	1200 	0 	800 	1000
    #Swipe By Percent 	90 	50 	10 	50 	# Swipes screen from right to left.
    Swipe By Percent 	50 	85 	50 	20 	# Swipes down
    #propertyAd_selectAdAmeneties(loc_driver);
    Wait Until Page Contains Element    //android.widget.Button[@text='Amenities']
    Click Element  //android.widget.Button[@text='Amenities']
    Wait Until Page Contains Element    //android.widget.CheckedTextView[@text='Balcony']
    Click Element  //android.widget.CheckedTextView[@text='Balcony']
    Wait Until Page Contains Element    //android.widget.TextView[@text='READY']
    Click Element  //android.widget.TextView[@text='READY']
    #propertyAd_selectAdBedrooms(loc_driver);
    Wait Until Page Contains Element    //android.widget.TextView[@text='Bedrooms']
    Click Element  //android.widget.TextView[@text='Bedrooms']
    Wait Until Page Contains Element    //android.widget.CheckedTextView[@text='2']
    Click Element  //android.widget.CheckedTextView[@text='2']
    #propertyAd_selectAdBethrooms(loc_driver);
    Wait Until Page Contains Element    //android.widget.TextView[@text='Bathrooms']
    Click Element  //android.widget.TextView[@text='Bathrooms']
    Wait Until Page Contains Element    //android.widget.CheckedTextView[@text='2']
    Click Element  //android.widget.CheckedTextView[@text='2']
    #propertyAd_inputArea
    Wait Until Page Contains Element    //android.widget.EditText[@text='Area (m²)']
    Input Text  //android.widget.EditText[@text='Area (m²)']  200000
    #propertyAd_selectCompound(loc_driver);
    Wait Until Page Contains Element    //android.widget.Button[@text='Compound']
    Click Element  //android.widget.Button[@text='Compound']
    Wait Until Page Contains Element    //android.widget.TextView[@text='2020 Compound']
    Click Element  //android.widget.TextView[@text='2020 Compound']
    #scrollToSpecificElement(loc_driver, "Phone");
    Swipe By Percent 	50 	80 	50 	10 	# Swipes down
    #propertyAd_inputDescription(loc_driver, desc);
    Wait Until Page Contains Element    //android.widget.EditText[@text='Description']
    Input Text  //android.widget.EditText[@text='Description']  mydescription
    #propertyAd_AddLocation(loc_driver, threeLettersOfCity);
    Wait Until Page Contains Element    //android.widget.Button[@text='Ad Location']
    Click Element  //android.widget.Button[@text='Ad Location']
    Wait Until Page Contains Element    //android.widget.EditText[@resource-id='com.olxmena.horizontal:id/search_src_text']
    input text  //android.widget.EditText[@resource-id='com.olxmena.horizontal:id/search_src_text']  Maadi
    Wait Until Page Contains Element    //android.widget.TextView[@resource-id='com.olxmena.horizontal:id/small']
    Click Element  //android.widget.TextView[@resource-id='com.olxmena.horizontal:id/small']
    #scrollToSpecificElement(loc_driver, "Submit");

    #propertyAd_inputName( loc_driver,  name);
    Wait Until Page Contains Element    //android.widget.EditText[@text='Name']
    input text  //android.widget.EditText[@text='Name']  Name
    #propertyAd_inputEmail( loc_driver,  email);
    Wait Until Page Contains Element    //android.widget.EditText[@text='E-mail']
    input text  //android.widget.EditText[@text='E-mail']  email@email.com
    #propertyAd_inpuPhone( loc_driver,  phone);
    Wait Until Page Contains Element    //android.widget.EditText[@text='Phone']
    input text  //android.widget.EditText[@text='Phone']  01066441745


    Swipe By Percent 	50 	90 	50 	10 	# Swipes down
    #Close Application













		#//propertyAd_submitForm(loc_driver);


