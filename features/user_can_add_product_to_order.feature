Feature: Feature name

    Feature Description

    Background:
        Given the following products exists
            | name  | price |
            | Pizza | 20    |
            | Pasta | 30    |

    Scenario: User visits site and adds products to his order
        Given I visit the site
        And I click "Add to order" for "Pizza"
        And I click "Checkout"
        Then I should be on the checkout page