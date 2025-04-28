@calculatorTest

  Feature: Calculator

    Scenario: add two numbers
      Given Two input values, 1 and 2
      When I add the two values
      Then I expect the result 3

    Scenario Outline: add two numbers
      Given Two input values, <first> and <second>
      When I add the two values
      Then I expect the result <result>

      Examples:
        | first | second | result |
        | 1     | 12     | 13     |
        | -1    | 6      | 5      |
        | 2     | 2      | 4      |


    Scenario: Multiplying two numbers
      Given I have entered 6 into the calculator
      And I have entered 2 into the calculator
      When I press *
      Then the result should be 12 on the screen

    Scenario: Dividing two numbers
      Given I have entered 6 into the calculator
      And I have entered 2 into the calculator
      When I press /
      Then the result should be 3 on the screen

    Scenario: Raising a number to the power of another
      Given I have entered 6 into the calculator
      And I have entered 2 into the calculator
      When I press ^
      Then the result should be 36 on the screen

      Feature: Calculator Operations

    Scenario Outline: Performing an operation on two numbers
      Given I have entered <first> into the calculator
      And I have entered <second> into the calculator
      When I press <operator>
      Then the result should be <expectedResult> on the screen

      Examples:
        | first | second | operator | expectedResult |
        | 6     | 2      | *        | 12             |
        | 6     | 2      | /        | 3              |
        | 6     | 2      | ^        | 36             |
