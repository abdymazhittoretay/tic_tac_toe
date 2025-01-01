import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> gridList = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  int player1Score = 0;
  int player2Score = 0;
  bool xTurn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(24.0),
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Player 1 Score: $player1Score",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Text(
                      "Player 2 Score: $player2Score",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    for (int i = 0; i < gridList.length; i++) {
                      gridList[i] = "";
                    }
                    xTurn = true;
                    player1Score = 0;
                    player2Score = 0;
                  });
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  padding: EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    "Reset Game",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 24.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 375,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(10.0)),
                child: GridView.builder(
                  itemCount: gridList.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (xTurn && gridList[index] == "") {
                            gridList[index] = "x";
                            xTurn = !xTurn;
                          } else if (!xTurn && gridList[index] == "") {
                            gridList[index] = "o";
                            xTurn = !xTurn;
                          }
                          checkWinner();
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Center(
                          child: Text(
                            gridList[index],
                            style:
                                TextStyle(color: Colors.black, fontSize: 52.0),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    for (int i = 0; i < gridList.length; i++) {
                      gridList[i] = "";
                    }
                    xTurn = true;
                  });
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  padding: EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    "Clear board",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 24.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Functions
  void checkWinner() {
    if (gridList[0] == gridList[1] &&
        gridList[0] == gridList[2] &&
        gridList[0] != "") {
      if (gridList[0] == "x") {
        player1Score++;
      } else {
        player2Score++;
      }
    } else if (gridList[0] == gridList[3] &&
        gridList[0] == gridList[6] &&
        gridList[0] != "") {
      if (gridList[0] == "x") {
        player1Score++;
      } else {
        player2Score++;
      }
    } else if (gridList[0] == gridList[4] &&
        gridList[0] == gridList[8] &&
        gridList[0] != "") {
      if (gridList[0] == "x") {
        player1Score++;
      } else {
        player2Score++;
      }
    } else if (gridList[1] == gridList[4] &&
        gridList[1] == gridList[7] &&
        gridList[1] != "") {
      if (gridList[1] == "x") {
        player1Score++;
      } else {
        player2Score++;
      }
    } else if (gridList[2] == gridList[5] &&
        gridList[2] == gridList[8] &&
        gridList[2] != "") {
      if (gridList[2] == "x") {
        player1Score++;
      } else {
        player2Score++;
      }
    } else if (gridList[2] == gridList[4] &&
        gridList[2] == gridList[6] &&
        gridList[2] != "") {
      if (gridList[2] == "x") {
        player1Score++;
      } else {
        player2Score++;
      }
    } else if (gridList[3] == gridList[4] &&
        gridList[3] == gridList[5] &&
        gridList[3] != "") {
      if (gridList[3] == "x") {
        player1Score++;
      } else {
        player2Score++;
      }
    } else if (gridList[6] == gridList[7] &&
        gridList[6] == gridList[8] &&
        gridList[6] != "") {
      if (gridList[6] == "x") {
        player1Score++;
      } else {
        player2Score++;
      }
    }
  }
}
