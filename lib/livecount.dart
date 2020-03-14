import 'package:flutter/material.dart';

import 'CountryCount.dart';

class LiveCount extends StatelessWidget {
  
  List<String> country = ["India", "Japan", "China", "Italy", "USA"];
  List<int> cActive = [100, 200, 300, 400, 500];
  List<int> cRecovered = [100, 200, 300, 400, 500];
  List<int> cDeath = [100, 200, 300, 400, 500];
  var active = 10000;
  var recovered = 200;
  var death = 700;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.white),
      child : Column(
        children: <Widget>[
            Column(
              children: <Widget>[
              Container(
                height:100,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 8,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Active",
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              Container(
                height:10,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 8,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Recovered",
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              Container(
                height:10,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    radius: 8,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Deaths",
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              Container(
                height:10,
              ),
            ],
         ),
         Column(
           children : <Widget> [
             SizedBox(
               height : 20,
             ),
            Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05
                ),
                Text(
                    "Global : ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      decoration: TextDecoration.none,
                    ),
                ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 8,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "$active",
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height:5
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.32
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 8,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "$recovered",
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height:5,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.32
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    radius: 8,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "$death",
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10
              ),
              Container(
                color: Colors.blueGrey,
                width: MediaQuery.of(context).size.width * 0.9,
                height: 1,
              ),
           ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text('Entry A')),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Entry B')),
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Entry C')),
              ),
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text('Entry A')),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Entry B')),
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Entry C')),
              ),
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text('Entry A')),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Entry B')),
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Entry C')),
              ),
            ],
            ),
        ),
       ],
      ),
    );
  }
}