Feature: To validate New User Registration Functionality of Adactin HotelApp

Background: 
 Given user starts "Chrome" browser
 And user launch App using url "https://adactinhotelapp.com/"

Scenario: To validate New User Registration Functionality 

When user click the  link using xpath "//a[text()='New User Register Here']"
And user enters text username "Chandu" using xpath "//input[@name='username']"
And user enters text password "Chandu@007123" using xpath "//input[@name='password']"
And user enters text Confirm Password "Chandu@007123" using xpath "//input[@name='password']"
And user enters text Full Name "ChandraShekhar" using xpath "//input[@name='full_name']"
And user enters text Email Address "chandrashekar@gmail.com" using xpath "//input[@name='email_add']"
And user enters text   Captcha Image usign xpath "//a[@id='change-image']/img"
And user enters text  Captcha Text using xpath "//input[@name='captcha']"
 And user click button  Terms/Conditionsusing using  xpath  "//input[@name='tnc_box']"
And user enters text Register using xpath "//input[@name='Submit']" 


