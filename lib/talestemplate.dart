import 'package:flutter/material.dart';

Card newcard(String n,String f,int a,int d,String t,String i)
{
  return Card(
    margin: EdgeInsets.all(20),
    child: Container(
      padding: EdgeInsets.all(20),
      child: new Column(
        children: <Widget>[
          SizedBox(height: 10,),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      Text('Name: ',style: TextStyle(color: Colors.red),),
                      Text(n,style: TextStyle(color: Colors.black),)
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('From: ',style: TextStyle(color: Colors.red),),
                      Text(f,style: TextStyle(color: Colors.black),)
                    ],
                  )
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      Text('Age: ',style: TextStyle(color: Colors.red),),
                      Text(a.toString(),style: TextStyle(color: Colors.black),),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      Text('Duration: ',style: TextStyle(color: Colors.red),),
                      Text(d.toString() + " days",style: TextStyle(color: Colors.black),)
                    ],
                  )
                ],
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
          SizedBox(height: 10,),
          Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(t,textAlign: TextAlign.start,style: TextStyle(
                    fontSize: 15,color: Colors.black54),),
              ),
              SizedBox(
                height: 10
              ),
              Container(
                child: Text(i,textAlign: TextAlign.start,style: TextStyle(
                    fontSize: 15,color: Colors.black54),),
              ),
            ],
          ),
          SizedBox(height: 10,),

        ],
      ),
    ),

  );
}