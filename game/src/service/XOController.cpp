//
// Created by razvan on 31/03/24.
//
#include "service/XOController.h"

// nothing to construct
XOController::XOController() {}

// Run a game
int XOController::run() {
  // Create the main window and result screens
  BoardWindow gameBoard;
  gameBoard.show();
  TieWindow tie;
  BuddyWindow buddy;

  // Create the Board(Data structure for the game)
  board b;

  // Use a wait loop to wait for a button click
  int clickedIndex = -1;
  QObject::connect(&gameBoard, &BoardWindow::buttonClicked, [&clickedIndex, &gameBoard, &b](int index) {
    clickedIndex = index;
    // Update the GUI with the  current player's value
    QString player(b.getCurrentPlayer());
    gameBoard.setButtonText(index, player);
    // Update the data structure
    int row = floor(index / 3);
    int col = index % 3;
    std::pair<int, int> playermove(row, col);
    b = b.getResult(playermove);

    // Computer's Turn now
    player = b.getCurrentPlayer();
    std::pair<int, int> AImove(b.minimax());
    // Compute pair -> index of AI move
    index = 3 * AImove.first + AImove.second;
    // AI's move shown on GUI
    gameBoard.setButtonText(index, player);
    // Update datastructure
    b = b.getResult(AImove);

    // Check for winner
    if (b.getWinner() != 0) {
      return;
    }
  });

  while (clickedIndex == -1) {
    QApplication::instance()->processEvents();
    clickedIndex = -1;
    if (b.getWinner() == 'O') {
      gameBoard.hide();
      QEventLoop loop;
      buddy.show();
      QTimer::singleShot(10000, &loop, &QEventLoop::quit);
      loop.exec();  // Allow event loop to continue until timer expires

      return -1;
    }
    if (b.isTerminal()) {
      gameBoard.hide();
      QEventLoop loop;
      tie.show();
      QTimer::singleShot(10000, &loop, &QEventLoop::quit);
      loop.exec();  // Allow event loop to continue until timer expires
      return 0;
    }
  }
}