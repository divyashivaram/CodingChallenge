Dubit's Coding Challenge
========================

Welcome to Dubit's very own Whack-a-mole game. It's a very simple little game designed to let you show off your coding skills. We would like to add a number of simple extensions to this game as numbered below.

You are strongly encouraged to add any comments about your implementation of a feature to the related section, explaining your reasoning and any difficulties you encountered. Have the best go you can at at least tasks 1-4, and send us the repository when you are done. Feel free to play around, refactor stuff as you see fit, and embellish the project with cool stuff.

The project was created with Flash Builder, but can be compiled using mxmlc without issue. You'll need the Flex 4.1 or higher SDK.

Thanks, and good luck!

1. Add a game over/scores screen
--------------------------------

This should appear after the game is over and the moles have stopped appearing. It should contain text telling the player the game is over and a label displaying the player's score.

It should also include a button labelled 'Play again' that will start a new game for the player



*Your comments:*





2. Add difficulty levels
------------------------

Modify the Introduction screen to allow the user to choose one of three difficulty levels: easy, medium and hard. Make the main game easier or more difficult based on the user's choice. The difficulty level should modify both the rate at which the moles appear and the time they spend on screen before disappearing.



*Your comments:*





3. Add new types of mole
------------------------

Currently there is only one type of mole that uses the standard_mole.png asset. Create two more types of mole with the following properties:

Fire Mole
* Points awarded for killing: 100
* Time showing on screen (ms): 1800
* Asset to use: fire_mole.png
* Number of clicks required to kill: 2

Zombie Mole
* Points awarded for killing: 400
* Time showing on screen (ms): 1200
* Asset to use: zombie_mole.png
* Number of clicks required to kill: 3

When spawning a new mole, have a 60% chance of creating a standard mole, a 25% chance of creating a fire mole, and a 15% chance of creating a zombie mole.



*Your comments:*





4. Build in achievements/awards
-------------------------------

This task requires creating a feature from scratch, and as such it gives you the most freedom to decide how to accomplish it.

Acheivements have become a standard feature of games over the past few years. They are awarded to the player when they meet a certain set of criteria. For example, the user might be awarded an achievement for breaking a score threshold for the first time. Add the following acheivements into the game, and have them appear in the section titled 'Achievements' to the right of the main game area:


Achievement name: Apprentice - 
Criteria required: Kill over 15 moles during a single game

Achievement name: Master - 
Criteria required: Kill more than 40 zombie moles in a single game

Achievement name: Mole massacre - 
Criteria required: Kill over 55 moles during a game

Achievement name: Fireman - 
Criteria required: Kill more than 10 fire moles in a single game

Achievement name: Apocolyptica - 
Criteria required: Kill more than 5 zombie moles in a game

Achievement name: Soft touch - 
Criteria required: Miss more than 30 moles during a game



*Your comments:*





Thanks for your interest, and once again - good luck!