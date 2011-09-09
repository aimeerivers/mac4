Feature: Special offer
  In order to attract people to try something new
  As a clicinician
  I want to offer a monthly special offer

  Scenario: Special offer appears in a box
    Given the current special offer is "ipl-permanent-hair-reduction"
    When I go to the Dermaroller treatment page
    Then I should see "20% off when you purchase a course of 3 IPL treatments" within ".special-offer"
    When I follow "find out more" within ".special-offer"
    Then I should be on the IPL treatment page
    And I should not see a special offer box

  Scenario: Special offer appears on the page to which it pertains
    Given the current special offer is "ipl-permanent-hair-reduction"
    When I go to the IPL treatment page
    Then I should see "Book a course of 3 treatments" within "#primary .special-offer"
