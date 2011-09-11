Feature: Additional pages

  Scenario: About us page
    When I go to the About us page
    Then I should see the heading "About us"
    And I should see the page title "About The Medical Aesthetic Clinic"

  Scenario: Links page
    When I go to the Links page
    Then I should see the heading "Useful and related links"
    And I should see the page title "The Medical Aesthetic Clinic - Useful and Related Links"
