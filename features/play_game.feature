Feature: Play Game

   It will display the current
   game status. The number of remaining lives,
   Clues and whether the game is won or lost

  Scenario: Valid guess
  Given User is on game page
  When User enters the "Letter" with "a"
  And User clicks the "Guess!" button
  Then Guesses made should have "a"

  Scenario: Invalid guess
  Given User is on game page
  When User enters the "Letter" with "@"
  And User clicks the "Guess!" button
  Then User gets an alert "Letter is invalid"


