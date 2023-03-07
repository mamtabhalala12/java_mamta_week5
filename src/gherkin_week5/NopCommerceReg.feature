Feature: NopCommerce Registration
  As a user I want to check the Registration functionality of NopCommerce

  Background: I am on NopCommerce Registration page
    Given  I open the Google Chrome Browser
    When   I open the URL https://demo.nopcommerce.com/register
    Then   I am on NopCommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When            I enter first name "<First Name>"
    And             I enter last name "<Last Name>"
    And             I enter email address "<Email>"
    And             I enter password "<Password>"
    And             I enter confirm password "<Confirm Password>"
    And             I click on register button
    Then            I can see an error message "<error message>"
    And             I am not able to register

    Examples:
      | First Name | Last Name | Email            | Password | Confirm Password | error message                              |
      | " "        | Bakshi    | bakshi@gmail.com | 546748   | 546748           | please enter First Name                    |
      | Rohan      | " "       | bakshi@yahoo.com | abc456   | abc456           | please enter Last Name                     |
      | Rohan      | bakshi    | " "              | 645758   | 645758           | please enter valid email                   |
      | Rohan      | Bakshi    | bakshi@yahoo.com | " "      | 756584           | password is required                       |
      | Rohan      | Bakshi    | Bakshi@gmail.com | abc657   | " "              | confirm password required                  |
      | Rohan      | Bakshi    | Bakshi@yahoo.com | abc234   | abc224           | password and confirm password do not match |
      | Rohan      | Bakshi    | bakshi@gmail.com | 1234     | " "              | minimum 6 character password is required   |
      | " "        | " "       | " "              | " "      | " "              | mandatory (*) field is required            |

  Scenario: I should be able to select any one radio button from Gender Label of your personal detail section
    Given   I am able on Gender label of your personal detail section
    When    I select "Male" radio button
    And     I select "Female" radio button
    Then    I am able to select any one of the radio button

  Scenario Outline:  I should be able to select Day, Month and Year from drop down list of Date of Birth field
    Given    I am on Date of Birth field of your personal detail section
    When     I select day "<Day>"
    And      I select month "<Month>"
    And      I select year "<Year>"
    Then     I am able to select Day, Month and Year from drop down list

    Examples:
      | Day | Month    | Year |
      | 12  | December | 1990 |
      | 31  | July     | 2000 |

  Scenario: I should be able to check and uncheck the Newsletter box on Options selection
    Given   I am on newsletter label on Options selection
    When    I click on Newsletter checkbox
    And     I again click on Newsletter checkbox
    Then    I was able to check and uncheck the box next to Newsletter label

  Scenario:  I should be able to register with valid mandatory (*) field data on registration page
    When     I enter First name "Rohan"
    And      I enter Last name "bakshi"
    And      I enter Email "bakshi@gmail.com"
    And      I enter Password "Abc345"
    And      I enter Confirm Password "Abc345"
    And      I click on Register button
    Then     I was able to register successfully

