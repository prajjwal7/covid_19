import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:coronah/count.dart';
import 'symptomscheck.dart';
import 'feed.dart';
import 'tips.dart';
import 'tales.dart';

void main() => runApp(CoroNAH());

class CoroNAH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> _widgets = <Widget>[Feed(),Tales(),Symptomscheck(),Tips()];
  PageController pageController = PageController();
  void _onItemTapped(int index) {
    pageController.jumpToPage(index);
  }
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: _onPageChanged,
        children: _widgets,
        physics: NeverScrollableScrollPhysics(),
      ),
      drawer: Drawer(semanticLabel: 'Text',child: Count(),),
      drawerDragStartBehavior: DragStartBehavior.down,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.assignment,color: Colors.greenAccent,), title: Text('Feed')),
          BottomNavigationBarItem(icon: Icon(Icons.face,color: Colors.greenAccent), title: Text('Count')),
          BottomNavigationBarItem(
              icon: Icon(Icons.check_circle,color: Colors.greenAccent), title: Text('Check')),
          BottomNavigationBarItem(
              icon: Icon(Icons.wb_incandescent,color: Colors.greenAccent), title: Text('Tips')),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
