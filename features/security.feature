Feature: Security
  As a site owner
  In order to keep the site secure
  I want to utilize user login

Scenario: Trying to access a secure resource
  Given I am not logged in
  When I try to access a secure resource
  Then I should be redirected to the login