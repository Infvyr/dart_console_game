## Project: Rock, Paper, Scissors

Build a command line tool that plays Rock, Paper, Scissors.

When started, the program should show this prompt:

    $ rock_paper_scissors

    Choose one: (r)ock, (p)aper, (s)cissors
    >

It should then read the user input and use it as follows:

- If the user enters `r`, `p`, or `s`, the program should play a round of Rock, Paper, Scissors against a computer opponent. Treat this as valid move.
- If the user enters `q`, the program should exit.
- If the use enters anything else, show "Invalid move." and re-prompt.

After the user has entered a valid move, generate another move at random, then compare the two moves according to the rules of game.

For example, if you played "rock", and the program played "paper" the output should be:

    You played: rock
    The computer played: paper
    You lose!

The game should repeat until the user enters `q`.