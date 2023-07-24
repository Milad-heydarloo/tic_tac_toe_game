import 'package:flutter/material.dart';

class home_app extends StatefulWidget {
  const home_app({super.key});

  @override
  State<home_app> createState() => _home_appState();
}

class _home_appState extends State<home_app> {
  bool isTurnO = true;
  int X = 0;
  int O = 0;

//zakhireh bazi to array
  List<String> list = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              _getRow(),
              _getRow2(),
              SizedBox(
                height: 80,
              ),
              _get_border(),
              _get_Trun(),

            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          elevation: 0,
          centerTitle: true,
          title: Text(
            'TicTacToe',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _get_Trun() {
    return Text(
      //goftam age isTurnO true bod 'Turn O' vagarna 'Turn X'
      isTurnO ? 'Turn O' : 'Turn X',
      style: TextStyle(
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _get_border() {
    //ba Expanded estefadeh shavad GridView.builder
    return Expanded(
      child: GridView.builder(
        //migeh to har radif chanta bechinam barat => 3ta
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        //migeh kolan chanta khoneh mikhai
        itemCount: 9,
        // itemBuilder item haye maro misazeh
        // va to parametr index be itemi ke click shodeh eshareh dareh
        itemBuilder: (BuildContext context, int index) {
          //handel click roye item ha
          //wrap mikonim Container ro ba GestureDetector
          return GestureDetector(
            //on tap
            onTap: () {
              _click(index);
            },
            //vase inke text ha biyan vasat
            child: Container(
              //namayesh meghdar khoneh ro item
              child: Center(
                child: Text(
                  list[index],
                  style: TextStyle(
                    //age in index az list ke tosh hastim == X hast
                    //to brown ro bargardon : na ghermez
                    color: list[index] == 'X' ? Colors.amberAccent : Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          );
        },
      ),
    );
  }

  void _get_winner() {
    //migim khoneh sefrom ba khoneh aval ham namand
    //bad migam khoneh yek ba khoneh do ham namand
    //bad migam sefr age poure shart paiin ro ejra kon
    if (list[0] == list[1] && list[1] == list[2] && list[0] != '') {
      if (list[0] == 'O') {
        setState(() {
          O = O + 1;
        });
      } else {
        setState(() {
          X = X + 1;
        });
      }
      return;
    }
    if (list[3] == list[4] && list[4] == list[5] && list[3] != '') {
      if (list[3] == 'O') {
        setState(() {
          O = O = 1;
        });
      } else {
        setState(() {
          X = X + 1;
        });
      }
      return;
    }

    if (list[6] == list[7] && list[7] == list[8] && list[6] != '') {
      if (list[6] == 'O') {
        setState(() {
          O = O + 1;
        });
      } else {
        setState(() {
          X = X + 1;
        });
      }
      return;
    }

    if (list[0] == list[3] && list[3] == list[6] && list[0] != '') {
      if (list[0] == 'O') {
        setState(() {
          O = O + 1;
        });
      } else {
        setState(() {
          X = X + 1;
        });
      }
      return;
    }
    if (list[1] == list[4] && list[4] == list[7] && list[1] != '') {
      if (list[0] == '1') {
        setState(() {
          O = O + 1;
        });
      } else {
        setState(() {
          X = X + 1;
        });
      }
      return;
    }
    if (list[2] == list[5] && list[5] == list[8] && list[2] != '') {
      if (list[2] == 'O') {
        setState(() {
          O = O + 1;
        });
      } else {
        setState(() {
          X = X + 1;
        });
      }
      return;
    }
    if (list[0] == list[4] && list[4] == list[8] && list[0] != '') {
      if (list[0] == 'O') {
        setState(() {
          O = O + 1;
        });
      } else {
        setState(() {
          X = X + 1;
        });
      }
      return;
    }
    if (list[2] == list[4] && list[4] == list[6] && list[2] != '') {
      if (list[2] == 'O') {
        setState(() {
          O = O + 1;
        });
      } else {
        setState(() {
          X = X + 1;
        });
      }
      return;
    }
  
  }

  void _click(int item) {
    //ba in kar age khoneh khali nabashe barmigardeh
    if (list[item] != '') return;
    setState(() {
      if (isTurnO) {
        list[item] = 'O';
      } else {
        list[item] = 'X';
      }
      isTurnO = !isTurnO;
      _get_winner();
      print(list.toString());
    });
  }

  Widget _getRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Player O',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Player X',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _getRow2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          '$O',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '$X',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
