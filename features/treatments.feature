Feature: Treatements

  Scenario: IPL Permanent Hair Reduction
    When I go to the IPL treatment page
    Then I should see "IPL Permanent Hair Reduction"
    And I should see "Who can be treated?" within ".faq"
    And I should see "Price guide (women)" within ".prices"
    And I should see "Sides of face" within ".prices"
