Feature: Treatements

  Scenario: IPL Permanent Hair Reduction
    When I go to the IPL treatment page
    Then I should see the heading "IPL Permanent Hair Reduction"
    And I should see the page title "IPL Permanent Hair Reduction at The Medical Aesthetic Clinic in Winchester"
    And I should see "Who can be treated?" within ".faq"
    And I should see "Price guide (women)" within ".prices"
    And I should see "Sides of face" within ".prices"

  Scenario: Dermaroller
    When I go to the Dermaroller treatment page
    Then I should see the heading "Genuine Dermaroller™ Therapy"
    And I should see the page title "Genuine Dermaroller™ Therapy - Natural skin regeneration and scar repair therapy available at The Medical Aesthetic Clinic in Winchester"
    And I should see "Single treatment" within ".prices"
    And I should see "A course of 3 treatments is recommended" within ".prices"
    And I should see "We offer gift vouchers" within ".gift-vouchers"

  Scenario: Wrinkle relaxing injections
    When I go to the Botox treatment page
    Then I should see the heading "Wrinkle Relaxing Injections"
    And I should see the page title "Wrinkle Relaxing Injections at The Medical Aesthetic Clinic in Winchester"
    And I should see "Single treatment" within ".prices"

  Scenario: Dermal fillers
    When I go to the Dermal fillers treatment page
    Then I should see the heading "Dermal Fillers"
    And I should see the page title "Dermal Fillers - Restylane - Juvéderm - at The Medical Aesthetic Clinic in Winchester"
