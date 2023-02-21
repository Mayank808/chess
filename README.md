# Chess Introduction
Classic Chess in C++ with custom built AI for move generation. Applied various OOP practices and design patterns to build a highly cohesive program. Created 5 computer difficulty levels, one of which used minimax algorithm to generate the best moves. Built this program as a month long university level project. See screenshots at the bottom of this readme :)

Please contact us to view the code. It can not be currently shown as it is against University policy to publicly display such major assignments :)

# Repository Structure
  - [uml.pdf](https://github.com/theDe-bugger/chess/blob/main/uml.pdf) is a uml design of our chess program. and is seen here:
  ![image](https://user-images.githubusercontent.com/39176231/220402205-429ff1a5-5ad9-4659-84ce-50f3cdab5e34.png)
  - [design.pdf](https://github.com/theDe-bugger/chess/blob/main/design.pdf) is a reflection on the design patterns we implemented and the quality of our work.
  - [createboardtest.sh](https://github.com/theDe-bugger/chess/blob/main/createboardtest.sh) is a bash script to turn fen strings from chess.com to test files as desired.
  - [valgrindcheck.sh](https://github.com/theDe-bugger/chess/blob/main/valgrindcheck.sh) is a bash script to test all input files against a given program with the valgrind command.
  
# High Level Overview of Logic
* ChessBoard
This is the main class that stores all the pieces and performs all move validations. It is the central class that the program relies on to actually process the game and determine logic. Stores pointers to players, pieces, and a scoreboard. Subject of the text observers as mentioned later on. Handles input validation to a logical extent.

* Player
There are two types of players, NPC(Levels) and Human. Human allows for commandline input and creates a Move class instance. NPC is the computer with 5 possible levels which generates a certain class/quality of moves based on which level it is in. 
Level 1: random valid moves
Level 2: random valid moves and captures
Level 3: captures, defense, and valid moves
Level 4: checks/checkmates, weight-based captures, defense, valid moves
Level 5: minimax algorithm to optimize moves

* Pieces:
Abstract Piece class for every piece on the board to inherit from. Each piece can now validate input, return possible moves that it can make on the current board, and handles specific types of moves (castling, pawn promotion and enpassant for example).

* Applying Moves:
The ChessBoard handles this function by checking if the current move input can be applied (does not check the current player, it is a valid move for the corresponding piece, etc). Checked this by applying to a clone of the board and if it was valid, then it allowed it, otherwise it gave an error.

* Check/Checkmate and Stalemate:
Created move generator functions to check the possible valid moves that each player can make at the end of a turn if the current board shows a check. If there are no possible valid moves, checks if one of the kings is in check and returns checkmate, otherwise returns stalemate.

# OOP and Design Practices
* Observer Pattern:
The ChessBoard class was the subject and the obsever class was the text-based and graphic-based output to display the game.

* Strategy Pattern:
Used strategy pattern to create computer levels (to generate different types of moves based on a certain property).

* Chain of Responsibility Pattern:
Each part of the code had responsibility and passed down certain tasks to subclasses (ie; board does general move validation, pieces do specific move validation, etc).

# Flawed MVC"
We attempted to apply Model-View-Controller pattern in the limited time, but were unsuccessful in implementing it fully. We mixed the controller and model into one by performing validations in the chessboard itself instead of strictly keeping the chessboard the model and keeping a general controller. 

# Screenshots

* Command Line ChessBoard
<img width="390" alt="Screenshot 2023-02-21 at 11 30 30 AM" src="https://user-images.githubusercontent.com/39176231/220403747-b4638d2c-5f29-4841-a7cf-d6bc85d626ef.png">
<img width="344" alt="Screenshot 2023-02-21 at 11 31 09 AM" src="https://user-images.githubusercontent.com/39176231/220403894-ccbf1895-a50e-4343-a90e-d66d7b737b12.png">

* Xming Graphical ChessBoard
<img width="934" alt="Screenshot 2023-02-21 at 11 31 27 AM" src="https://user-images.githubusercontent.com/39176231/220403962-316c83d4-fd2c-4f40-b305-ef799140d5c1.png">
