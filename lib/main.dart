import 'package:flutter/material.dart';
import 'feed.dart';

void main() => runApp(CoroNAH());

class CoroNAH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "CoroNAH",
      home: Feed(),
    );
  }
}