#bundle exec rake db:reset RAILS_ENV=test   Use this to reset db with seeds

Feature: 
  
  As an Oreja user
  So that I can organize my podcasts
  I want to be able to work with the relationships between episodes, podcasts and providers

Background: providers, podcasts, and episodes in database
  
  
  # Given the following providers exist:
  # | name   | description |        

  # Given the following podcasts exist:
  # | provider_id  | summary | name     | image_url | genre|

  # Given the following episodes exist:
  # | name   | description | air_date | duration | podcast_id|

  
Scenario: Click on image of The Weeds and see latest episodes
  Given I am on the podcasts page
  And I click on "Vox's The Weeds"
  Then I expect to see "Kentucky, the Rust Belt"
  And I expect to see "Russia and the American Dream"
  
Scenario: Check to see if seeded podcasts are linked together properly
  Given I am on the providers page
  And I follow "BBC Radio 4"
  Then I expect to see "In Our Time"
  And I expect to see "Best of Today"


   
  
