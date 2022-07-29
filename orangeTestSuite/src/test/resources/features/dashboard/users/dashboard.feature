Feature: DASHBOARD
    The requirements page for this feature is shown in The requirements page for a feature. Here we see the introductory text from the top of the feature file, the list of scenarios (or acceptance criteria) defined for this feature, and a detailed description of each scenario. Icons indicate whether a scenario passed or failed, and if you click on the title bar of one of the scenarios, you will go to the test results page for that scenario.

    Scenario: Check menu option
        Given customer is authenticated
        And customer is admin
        Then customer should see some menu