import 'package:flutter/material.dart';


class custombar extends StatelessWidget implements PreferredSizeWidget{
  final double height=55;
  String s;
  custombar(this.s);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 40),
        Row(
          children: <Widget>[
            SizedBox(width: 20),
            Text(s, style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black,
            ))
          ],
        ),
        FractionallySizedBox(
          widthFactor: 1.05,
          child: Container(
            height: 2,
            color: Colors.black12,
          ),
        ),
      ],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(height);
}
