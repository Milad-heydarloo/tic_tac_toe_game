import 'package:flutter/material.dart';
import 'package:tic_tac_toe_game/home_screen.dart';

void main() {
  runApp(_application());
}

class _application extends StatefulWidget {
  const _application({super.key});

  @override
  State<_application> createState() => _aApplicationState();
}

class _aApplicationState extends State<_application> {
  @override
  Widget build(BuildContext context) {
    return home_app();
  }
}
