import 'package:flutter/material.dart';


Container counttemplate(String c,int a,int d,int t,int r)
{

  return new Container(
    padding: EdgeInsets.only(left:50,right:50,top:30,bottom: 10),
    child: new Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              c,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                decoration: TextDecoration.none,
              ),
            ),]),

        Row(
              children: <Widget>[
                SizedBox(width: 100,),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 8,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  a.toString(),
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
        SizedBox(height: 10,),
        Row(
          children: <Widget>[
            SizedBox(width: 100,),
            CircleAvatar(
              backgroundColor: Colors.greenAccent,
              radius: 8,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              r.toString(),
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: <Widget>[
            SizedBox(width: 100,),
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 8,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              d.toString(),
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: <Widget>[
            SizedBox(width: 100,),
            CircleAvatar(
              backgroundColor: Colors.amberAccent,
              radius: 8,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              t.toString(),
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),


          ],
        ),

    );
}

