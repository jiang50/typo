Feature: Categories
  As an admin
  I want to categorize my blogs of various topics
  I want to be able to create new categories and edit older ones

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I follow "Categories"

  Scenario: Create a new category
    Given I am on the categories page
    When I fill in "category_name" with "Yucheng"
    And I fill in "category_keywords" with "student"
    And I fill in "category_description" with "CS student"
    And I press "Save"
    Then I should see "Yucheng"
    Then I should see "student"
    Then I should see "CS student" 