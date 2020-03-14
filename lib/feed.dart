import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'feedtemplate.dart';
import 'custombar.dart';
const url = "https://whoiskrishna.github.io/newsfeed/";
int selectedIndex=0;

//class API {
//  static Future getUsers() {
//    var url = baseUrl + "/users";
//    return http.get(url);
//  }
//}
var data= http.get(url);
class News{
  String time;
  String location;
  String article;

  News(String time,String location,String article)
  {
    this.time=time;
    this.location=location;
    this.article=article;
  }

  News.fromJson(Map json)
      : time= json['time'],
        location=json['location'],
        article=json['article'];

  Map toJson() {
    return {'article': article,'location': location,'time': time};
  }
}

class Feed extends StatefulWidget {
  @override
  createState() => _FeedState();
}

class _FeedState extends State {
  var news= new List<News>();

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  _getNews() {
    data.then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        news = list.map((model) => News.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getNews();
  }

  dispose() {
    super.dispose();
  }

  @override
  build(context) {
    return Scaffold(
        appBar: Mycustombar(),
        bottomNavigationBar: BottomNavigationBar(

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.face), title: Text('Count')),
            BottomNavigationBarItem(
                icon: Icon(Icons.check_circle), title: Text('Check')),
            BottomNavigationBarItem(
                icon: Icon(Icons.wb_incandescent), title: Text('Tips')),
          ],
          currentIndex: selectedIndex,
          fixedColor: Colors.greenAccent,
          onTap: onItemTapped,

        ),
        body: ListView.builder(
          itemCount: news.length,
          itemBuilder: (context, index) {
            return feedtemplate(news[index].time,news[index].location,news[index].article);
          },
        ));
  }
}