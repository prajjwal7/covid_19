import 'package:flutter/material.dart';


Container feedtemplate(String p,String q,String r)
{

  return new Container(
    padding: EdgeInsets.all(20),
    child: new Column(
      children: <Widget>[
        SizedBox(height: 10,),
        new Container(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(p,textAlign: TextAlign.start,style: TextStyle(
                  fontSize: 15,color: Color.fromRGBO(156, 0, 0, 1)),),
              new SizedBox(width: 20,),
              new Text(q,textAlign: TextAlign.start,style: TextStyle(
                  fontSize: 15,color: Color.fromRGBO(156, 0, 0, 1)),),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(r,textAlign: TextAlign.start,style: TextStyle(
                  fontSize: 15),),
            ),

          ],
        ),
        SizedBox(height: 10,),
        FractionallySizedBox(
          widthFactor: 1.08,
          child: Container(
            height: 1,
            color: Colors.black12,
          ),
        ),
      ],
    ),
  );
}

