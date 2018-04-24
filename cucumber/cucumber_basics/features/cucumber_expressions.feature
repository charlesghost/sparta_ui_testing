Feature: cucumber expressions
  As a user I wish to see how cucumber expressions work
  @expressions
  Scenario: I am able to use integers
    Given I provide an integer of 14
    Then I will be able to test the integer
  @expressions
  Scenario: I am able to use a float
    Given I provide an float of 21.5
    Then I will be able to test the float
  @expressions
  Scenario: I am able to capture and use words
    Given I provide specific word banana
    Then I will be able to test the word
  @expressions
  Scenario: I am able to capture and words and numbers using regular expressions
    Given I provide specific something like cheese I can capture it using a regex
    Then I will be able to test the captured regex