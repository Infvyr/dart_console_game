import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

class Game {
  final rand = Random();

  printGame() {
    while(true) {
      stdout.write('Choose one: (r)ock, (p)aper, (s)cissors:\n> ');
      final input = stdin.readLineSync();

      if (input == 'r' || input == 'p' || input == 's') {
        var playerMove;

        if(input == 'r') {
          playerMove = Move.rock;
        } else if(input == 'p') {
          playerMove = Move.paper;
        } else {
          playerMove = Move.scissors;
        }

        final random = rand.nextInt(3);
        final aiMove = Move.values[random];

        final playerOption = playerMove.toString().split('.').last;
        final aiOption = aiMove.toString().split('.').last;

        print('You chose $playerOption and the AI chose $aiOption');

        if(playerMove == aiMove) {
          print('Tie!');
        } else if(playerMove == Move.rock && aiMove == Move.scissors) {
          print('You win!');
        } else if(playerMove == Move.paper && aiMove == Move.rock) {
          print('You win!');
        } else if(playerMove == Move.scissors && aiMove == Move.paper) {
          print('You win!');
        } else {
          print('You lose!');
          break;
        }

      } else if(input == 'q') {
        break;
      } else {
        stdout.write('Invalid input. Try again.\n');
      }

    }

    exit(0);
  }
}