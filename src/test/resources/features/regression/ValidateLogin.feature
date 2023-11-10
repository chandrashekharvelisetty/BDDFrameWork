Feature: To validate login Functionality of Adactin HotelApp

Background:  
Given user starts "Chrome" browser
And user launch App using url "https://adactinhotelapp.com/"

@Smoke @Regression
Scenario: To validate login using valid username and valid password

When user enters text "Shekhar7123" in textbox using xpath "//input[@name='username']"
And user enters text "july@31" in textbox using xpath "//input[@id='password']"
And user clicks button using xpath "//input[@id='login']"
Then user verify the title of page to be "Adactin.com - Search Hotel"


@Regression  @Wip08
Scenario: To validate login using valid username and invalid password Credentials

When user enters text "Shekhar7123" in textbox using xpath "//input[@name='username']"
And user enters text "july@344" in textbox using xpath "//input[@id='password']"
And user clicks button using xpath "//input[@id='login']"
Then user verify the presence of text  using xpath  "//div[@class='auth_error']/b"
|error message|
|Invalid Login details or Your Password might have expired. |
Then user verify the title of page to be "Adactin.com - Hotel Reservation System"

@Regression  @Wip08
Scenario: To validate login using invalid username and valid password Credentials
And user launch App using url "https://adactinhotelapp.com/" 
When user enters text "Shekhar71235" in textbox using xpath "//input[@name='username']"
And user enters text "july@31" in textbox using xpath "//input[@id='password']"
And user clicks button using xpath "//input[@id='login']"
Then user verify the presence of text  using xpath  "//div[@class='auth_error']/b"
|error message|
|Invalid Login details or Your Password might have expired. |
Then user verify the title of page to be "Adactin.com - Hotel Reservation System"

@Regression  @Wip08
Scenario: To validate login using invalid username and invalid password Credentials

When user enters text "Shekhar7123" in textbox using xpath "//input[@name='username']"
And user enters text "july@344" in textbox using xpath "//input[@id='password']"
And user clicks button using xpath "//input[@id='login']"
Then user verify the presence of text  using xpath  "//div[@class='auth_error']/b"
|error message|
|Invalid Login details or Your Password might have expired. |
Then user verify the title of page to be "Adactin.com - Hotel Reservation System"

