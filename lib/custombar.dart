import 'package:flutter/material.dart';


class Mycustombar extends StatelessWidget implements PreferredSizeWidget{
  final double height=82;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 40),
        Row(
          children: <Widget>[
            SizedBox(width: 40),
            Text('FEED', style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black,
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
