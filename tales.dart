import 'package:flutter/material.dart';
import 'package:coronah/talestemplate.dart';
import 'package:flutter/services.dart';
import 'dart:core';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'custombar.dart';
const url = "https://whoiskrishna.github.io/newsfeed/";
int selectedIndex=0;

var data= http.get(url);
class Tale{
  String name;
  String from;
  String article;
  int age;
  String duration;
  Tale(String name,String from,String article,int age,String duration)
  {
    this.name;
    this.from=from;
    this.article=article;
    this.age=age;
    this.duration=duration;
  }

  Tale.fromJson(Map json)
      : name= json['name'],
        from=json['from'],
        article=json['article'],
        age=json['age'],
        duration=json['duration'];


  Map toJson() {
    return {'article': article,'duration': duration,'age': age,'name': name,'from': from,};
  }
}

class Tales extends StatefulWidget {
  @override
  _TalesState createState() => _TalesState();
}

class _TalesState extends State<Tales> {
  var tale= new List<Tale>();


  _getTale() {
    data.then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        tale = list.map((model) => Tale.fromJson(model)).toList();
      });
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
                      "If you've successfully survived Covid-19 please share your own story for the sake of motivating people! Please don't spam since it's a life taking event. ",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),

                  OutlineButton(
                    child: Text('Copy Link',style: TextStyle(color: Colors.blue),),
                    onPressed: () => Clipboard.setData(ClipboardData(text: 'www.google.com')),
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
            return newcard('Prajjwal Mishra', 'Karnataka', '20', '7 Days', 'Hi, fdsbf dsdn dsvn fsnf sfhdf sdfhsdfs sfhdsf fshfsfb asfgirjgg rghudrgd gdrgrgbgf vndvdfvnv dfvkndfvvnfb bfb bn bnvk vnk zchds vhd vdndv vnfvnfdvsc vdsv vnvvnvjs v v xcvnc,mv cvj x v vxjnv xvnv xv vxnjv vxx.dvdindvd vdvndfvn v fvfnv fvmfvmfv xdvnjdvdsvndvj fvdfmv fdbmfb cvmfbndfkdbd bohkbsfskdg');
//                 return newcard(tale[index].name,tale[index].from,tale[index].age,tale[index].duration,tale[index].article);
              },
            )
          ),
        ],
      ),
    );
  }
}
