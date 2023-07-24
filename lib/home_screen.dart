import 'package:flutter/material.dart';

class home_app extends StatelessWidget {
  const home_app({super.key});

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
              SizedBox(
                height: 45,
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
      'Trun X',
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
            child: Container(
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

  void _click(int item) {
    print('$item');
  }

  Widget _getRow() {
    return Row(
      mainAxisSize: MainAxisSize.max,
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
}
