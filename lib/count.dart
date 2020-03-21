import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:core';
import 'custombar.dart';
import 'counttemplate.dart';
const url = "https://whoiskrishna.github.io/CountCovid/";
int selectedIndex=0;



//class API {
//  static Future getUsers() {
//    var url = baseUrl + "/users";
//    return http.get(url);
//  }
//}
var data= http.get(url);
class Counting{
  String country;
  String active;
  String death;
  String total;
  String recovered;

  Counting(String country,String death,String active,String total,String recovered)
  {
    this.country=country;
    this.active=active;
    this.death=death;
    this.total=total;
    this.recovered=recovered;
  }

  Counting.fromJson(Map json)
      : country= json['country'],
        active=json['activ'],
        death=json['death'],
        total=json['total'],
        recovered=json['recovered'];

  Map toJson() {
    return {'country': country, 'activ': active,'death': death,'total': total,'recovered':recovered};
  }
}

class Count extends StatefulWidget {
  @override
  createState() => _CountState();
}

class _CountState extends State {
  var counting= new List<Counting>();

  _getCounting() {
    data.then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        counting = list.map((model) => Counting.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getCounting();
  }

//  dispose() {
//    super.dispose();
//  }

  @override
  build(context) {
    return Scaffold(
        appBar: custombar('COUNT'),
        body: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 8,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Active   ",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black87,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          radius: 8,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Recovered",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black87,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 8,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Deaths",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black87,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.yellow,
                          radius: 8,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Total",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black87,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            Container(
              height:15,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 30,),
                Text("[Updates daily between 10-11PM IST]", style: TextStyle(color: Colors.black26,fontSize: 10,),),
              ],
            ),
            Container(
              height:5,
            ),
            FractionallySizedBox(
              widthFactor: 1,
              child: Container(
                height: 2,
                color: Colors.black12,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: counting.length,
                itemBuilder: (context, index) {
                  // return counttemplate('Global', 123344, 24445, 233565, 342555);
                return counttemplate(counting[index].country,counting[index].active,counting[index].death,counting[index].total,counting[index].recovered);
                },
              ),
            ),
          ],
        ));
  }
}