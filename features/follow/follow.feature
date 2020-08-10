Feature: Function of following stores
    Scenario: Following a little shop
        Given That I'm logged into my little shop
        And I follow some other little shop
        When I access the peril of the little shop that was followed
        Then my little shop should be shown in the profile of the shop I followed

    Scenario: Shop follows another shop 
        Given That I'm logged into my little shop
        And Follow Some User
        When I access a listed profile
        Then I should visualize my little shop as a follower 

    Scenario: User not logged in 
        Given I'm on the site without being logged in 
        And I enter the profile of a little shop
        When I click on a listed profile
        Then I must be redirected to login/create account 

    Scenario: User does not follow profile
        Given That I'm logged into my little shop
        And I'm looking for a profile that I'm not following
        When Listo my followers
        Then the shop that was searched should not be listed
