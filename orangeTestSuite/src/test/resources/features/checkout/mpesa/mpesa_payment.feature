Feature: Mpesa payment
    Some business activities are considered more risk-prone than others,
    and certain customers and entities may pose specific risks.

    Scenario Outline: The business activity risk factor for an industry

        The industry risk factor is a value from 0 to 10.

        When a customer works in <Business Category>
        Then their base business activity risk factor should be <Risk Factor>

        Examples:
            | Business Category        | Risk Factor |
            | Casino                   | 10          |
            | Precious Metals Exchange | 9           |
            | Currency Exchange        | 9           |
            | Jewellery Store          | 8           |
            | Convenience Store        | 7           |
            | Real Estate Broker       | 6           |
            | Software Development     | 3           |

    Scenario Outline: The business activity risk factor for an established business
        Established businessess have been in activity for 2 years or more

        When a customer with a business risk factor of <Risk Factor>, such as for a <Business Category> business
        And the business been operation for more than two years
        Then their business activity risk rating should be <Risk Rating>

        Examples:
            | Risk Factor | Business Category    | Risk Rating |
            | 7 or above  | Casino               | High        |
            | 5 to 7      | Jewellery Store      | Medium      |
            | Under 5     | Software Development | Low         |

    Scenario: My example

        Given  I have copied exactly the example shown
        When   I paste into this feature file
        And    Click save
        Then   I should see an updated report