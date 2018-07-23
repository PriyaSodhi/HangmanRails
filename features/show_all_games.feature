Feature: Show Games

   User will be able to see all the gamnes
   and can destroy it or create a new game

   Background: flow till user is on index page
   Given User is on index page

   Scenario: List all games
   Then User should see "Listing all the games"

   Scenario: Delete the game
   When User clicks the "Destroy" link
   Then User should see "Game was successfully deleted"

   Scenario: New Game
   When User clicks the "New Game" link
   Then User should see "New Custom Game"
