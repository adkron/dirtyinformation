Feature: Create Post
  As a blogger
  In order to create content
  I want to be able to add a blog post

@wip
Scenario: Adding a post
  Given I am a blogger
  And am logged in
  When I create a post
  Then the post should be on the front page