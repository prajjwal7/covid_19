import 'package:flutter/material.dart';
import 'talestemplate.dart';
import 'package:flutter/services.dart';
import 'dart:core';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'custombar.dart';
const url = "https://blissful-euclid-9102b5.netlify.com/";
int selectedIndex=0;

var data= http.get(url);
class Tale{
  String name;
  String from;
  String article;
  int age;
  int duration;
  String stips;
  Tale(String name,String from,String article,int age,int duration,String stips)
  {
    this.name=name;
    this.from=from;
    this.article=article;
    this.age=age;
    this.duration=duration;
    this.stips=stips;
  }

  Tale.fromJson(Map json)
      : name= json['Sname'],
        from=json['Sfrom'],
        article=json['Sarticle'],
        age=json['Sage'],
        duration=json['Sduration'],
        stips=json['Stips'];


  Map toJson() {
    return {'Sarticle': article,'Sduration': duration,'Sage': age,'Sname': name,'Sfrom': from,'Stips': stips};
  }
}

class Tales extends StatefulWidget {
  @override
  _TalesState createState() => _TalesState();
}

class _TalesState extends State<Tales> {
  var tale= new List<Tale>();
  var copy = 'Copy Link';


  _getTale() {
    data.then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        tale = list.map((model) => Tale.fromJson(model)).toList();
      });
    });
  }
  _copyLink(){
    
    setState(() {
      Clipboard.setData(ClipboardData(text: 'https://forms.gle/AYEo1H6zNxr1FAcY7'));
      copy = copy=='Copy Link'?'Copied':'Copy Link';
    });
  }
  initState() {
    super.initState();
    _getTale();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custombar('SURVIVORS'),
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 6,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      "If you've survived Covid-19, Please share your story for the sake of motivating the rest of us! Please don't spam, Covid-19 is a serious issue.",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),

                  OutlineButton(
                    child: Text(copy,style: TextStyle(color: Colors.blue),),
                    onPressed: () => _copyLink(),// => Clipboard.setData(ClipboardData(text: 'https://forms.gle/AYEo1H6zNxr1FAcY7')),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                ],
              ),
              FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  height: 2,
                  color: Colors.black12,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tale.length,
              itemBuilder: (context, index) {
            return newcard(tale[index].name, tale[index].from, tale[index].age, tale[index].duration , tale[index].article,tale[index].stips);
//                 return newcard(tale[index].name,tale[index].from,tale[index].age,tale[index].duration,tale[index].article);
              },
            )
          ),
        ],
      ),
    );
  }
}
