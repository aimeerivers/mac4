Feature: Products

  Scenario: Products list
    When I go to the products page
    Then I should see the heading "Products available"
    And I should see the page title "Products available from The Medical Aesthetic Clinic"
    And I should see a list of products

  Scenario: Jan Marini
    When I go to the Jan Marini products page
    Then I should see the heading "Jan Marini skin research"
    And I should see the page title "Jan Marini skin research available at The Medical Aesthetic Clinic in Winchester"

  Scenario: Sesha
    When I go to the Sesha products page
    Then I should see the heading "Sesha skin therapy"
    And I should see the page title "Sesha skin therapy available at The Medical Aesthetic Clinic in Winchester"

  Scenario: Jane Iredale
    When I go to the Jane Iredale products page
    Then I should see the heading "Jane Iredale mineral make up"
    And I should see the page title "Jane Iredale mineral make up available at The Medical Aesthetic Clinic in Winchester"

  Scenario: iS CLINICAL
    When I go to the iS CLINICAL products page
    Then I should see the heading "iS CLINICAL®"
    And I should see the page title "iS CLINICAL® available at The Medical Aesthetic Clinic in Winchester"
