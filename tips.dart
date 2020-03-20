import 'package:coronah/custombar.dart';
import 'package:flutter/material.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custombar('PRECAUTIONS'),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              SizedBox(width: 30,),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 6,
              ),
              SizedBox(
                width: 20,
              ),

              Flexible(child: Text("If you have symptoms or have travelled to countries with coronavirus cases such as Italy and China, you should call to govt helpline number: 011-2397 8046.", style: TextStyle(color: Colors.red,fontSize: 10,),)),
            ],
          ),
          Container(
            height:10,
          ),
          FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              height: 2,
              color: Colors.black12,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                SizedBox(height: 20,),
                Image.asset('assets/tip1.jpg'),
                SizedBox(height: 20,),
                Image.asset('assets/tip2.jpg'),
                SizedBox(height: 20,),
                Image.asset('assets/tip1.jpg'),
                SizedBox(height: 20,),
                Image.asset('assets/tip2.jpg'),
                SizedBox(height: 20,),
                Image.asset('assets/tip1.jpg'),
                SizedBox(height: 20,),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
