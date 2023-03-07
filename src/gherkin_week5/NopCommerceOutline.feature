Feature: Demo NopCommerce's Top menu acceptance criteria
  As a user I would like to check acceptance criteria of NopCommerce Top menu

  Background:  User is on given URL
    When  User type URL https://demo.nopcommerce.com
    And   User click on Enter button
    Then  User is on given URL

  Scenario: Verify that user can navigate to Book Category
    When  User is on given URL
    And   Click on Books tab on Top menu
    Then  User is navigate to Books Category page

  Scenario: Verify that user can see the Books Category page with filters and list of products
    When   User is on given URL
    And    Click on Books tab On Top menu
    And    Check Filters and List Tab
    Then   Books Category page is displayed with filters and list tabs

  Scenario:  Verify that user can see 'Sort By' filter on Book Category page
    Given   User is on Books Category
    When    User is on Books Category page
    And     Check 'Sort By' filter is present
    Then    'Sort By' filter is available on Book Category page

  Scenario:  Verify that user can see 'Display' filter on Book Category page
    Given   User is on Books Category page
    When    User is on Books Category page
    And     Check 'Display' filter is present
    Then    'Display' filter is available on Book Category page

  Scenario:  Verify that user can see 'Grid' tab on Book Category page
    Given   User is on Books Category page
    When    User is on Books Category page
    And     Check 'Grid' tab is present
    Then    'Grid' tab is available on Book Category page

  Scenario:  Verify that user can see 'List' tab on Book Category page
    Given   User is on Books Category page
    When    User is on Books Category page
    And     Check 'List' tab is present
    Then    'List' tab is available on Book Category page

  Scenario:   Verify that user can see 'Name: A to Z' selection is present in 'Sort By' filter
    Given   User is on Books Category page
    When    User is on Books Category page
    And     Click on 'Sort By' filter
    And     Check that 'Name: A to Z' selection is present
    Then    'Name: A to Z' is present in 'Sort by' filter

  Scenario:  Verify that user can see 'Name: A to Z' is first option in 'Sort By' filter
    Given  User is on Books Category page
    When   User is on Books Category page
    And    Click on 'Sort By' filter
    And    Check that 'Name: A to Z' is first option in order

  Scenario:  Verify that user can see 'Name: A to Z' filter is functioning as expected(Note: Products are filtered in alphabetical order
    Given  User is on Books Category page
    When   User is on Books Category page
    And    Click on 'Sort By' filter
    And    Select 'Name: A to z' filter
    Then   All products are displayed in alphabetical order

  Scenario:  Verify that user can see 'Name: Z to A' selection is present in 'Sort by' filter
    Given   User is on Books Category page
    When    User is on Books Category page
    And     Click on 'Sort By' filter
    And     Check that 'Name: Z to A' selection is present
    Then    'Name: Z to A' is present in 'Sort By' filter

  Scenario:  Verify that user can see 'Name: Z to A' is second option in 'Sort By' filter
    Given  User is on Books Category page
    When   User is on Books Category page
    And    Click on 'Sort by' filter
    And    Check that 'Name: Z to A' is second option in order

  Scenario:  Verify that user can see 'Name: Z to A' filter is functioning as expected
    Given  User is on Books Category page
    When   User is on Books Category page
    And    Click on 'Sort By' filter
    And    Select 'Name: Z to A' filter
    Then   All products are displayed in discending alphabetical order(Z to A)