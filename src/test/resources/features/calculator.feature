@calculatorTest
Feature: Calculator

  Scenario: Add two numbers
    Given Two input values, 1 and 2
    When I add the two values
    Then I expect the result 3

  Scenario Outline: Add two numbers using examples
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
    Then I expect the result 12

  Scenario: Dividing two numbers
    Given I have entered 6 into the calculator
    And I have entered 2 into the calculator
    When I press /
    Then I expect the result 3

  Scenario: Raising a number to the power of another
    Given I have entered 6 into the calculator
    And I have entered 2 into the calculator
    When I press ^
    Then I expect the result 36

  Scenario Outline: Performing an operation on two numbers
    Given I have entered <first> into the calculator
    And I have entered <second> into the calculator
    When I press <operator>
    Then I expect the result <expectedResult>

    Examples:
      | first | second | operator | expectedResult |
      | 6     | 2      | *        | 12             |
      | 6     | 2      | /        | 3              |
      | 6     | 2      | ^        | 36             |
