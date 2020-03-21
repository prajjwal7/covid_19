import 'package:flutter/material.dart';
import 'custombar.dart';
var pressAttention1=false;
var pressAttention2=false;
var pressAttention3=false;
var pressAttention4=false;
var pressAttention5=false;
var pressAttention6=false;
var pressAttention7=false;
var pressAttention8=false;
var pressAttention9=false;
var pressAttention10=false;
var pressAttention11=false;
var pressAttention12=false;
bool k=false;
var count1=0;
var count2=0;
var count3=0;
var count4=0;
var count5=0;
var count6=0;
var count7=0;
var count8=0;
var count9=0;
var count10=0;
var count11=0;
var count12=0;

var sum=count1+count2+count3+count4+count5+count6+count7+count8+count9+count10+count11+count12;

int summation(){
  return count1 + count2 + count3 + count4 + count5 + count6 + count7 + count8 + count9 + count10 + count11 + count12;
}

reset(){
  pressAttention1=false;
  pressAttention2=false;
  pressAttention3=false;
  pressAttention4=false;
  pressAttention5=false;
  pressAttention6=false;
  pressAttention7=false;
  pressAttention8=false;
  pressAttention9=false;
  pressAttention10=false;
  pressAttention11=false;
  pressAttention12=false;
  count1=0;
  count2=0;
  count3=0;
  count4=0;
  count5=0;
  count6=0;
  count7=0;
  count8=0;
  count9=0;
  count10=0;
  count11=0;
  count12=0;
}

class Symptomscheck extends StatefulWidget {
  @override
  _SymptomscheckState createState() => _SymptomscheckState();
}

class _SymptomscheckState extends State<Symptomscheck> {
  @override
  Widget build(BuildContext context) {
    String showSuggestion(sum){
      reset();
      if(sum > 5){
        sum = 0;
        return "See a doctor, immediately. Practice Social Distancing.";
      } else if(sum > 1){
        sum = 0;
        return "Please confirm with a doctor. Practice Social Distancing.";
      } else{
        sum = 0;
        return "You seem to be safe. But a doctor's advice would be much better. Practice Social Distancing.";
      }
    }
    void _showcontent() {
      showDialog<Null>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return new AlertDialog(
            // title: new Text('You clicked on'),
            content: new SingleChildScrollView(
              child: new ListBody(
                children: <Widget>[
                  new Text(
                    sum.toString() + " / 12  Symptoms Matched" ,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(
                      height:10
                    ),
                    Text(
                      showSuggestion(sum)
                    ),
                    
                ],
              ),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('Okay'),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
//                    sum=0;
//                    pressAttention1=false;pressAttention2=false;pressAttention3=false;pressAttention4=false;pressAttention5=false;pressAttention6=false;
//                    count1=0;
//                    count2=0;
//                    count3=0;
//                    count4=0;
//                    count5=0;
//                    count6=0;
                  });

                },
              ),

            ],
          );
        },
      );
    }
    return Scaffold(
      appBar: custombar('SYMPTOMS CHECK'),
      body: Column(
        children: <Widget>[SizedBox(height: 10,),
          Row(
            children: <Widget>[
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6
              ),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 8,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Yes",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          Container(
            height:10,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 8,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "No",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          Container(
            height:10,
          ),
          Row(
            children: <Widget>[
              SizedBox(width: 30,),
              Text("An approximate result will be displayed. Prefer Doctor's suggestion!", style: TextStyle(color: Colors.black26,fontSize: 10,),),
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
          ),Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 30,right: 30,left: 30),
              children: <Widget>[
                SizedBox(height: 20,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('1. Fever',style: TextStyle(fontSize: 18,color: Colors.black),),
                    new OutlineButton(
                      child: Text(pressAttention1?'Yes':'No'),
                      textColor: pressAttention1 ? Colors.red : Colors.green,
                      onPressed: () => setState(() =>{pressAttention1 = !pressAttention1, count1=count1==1?0:1,sum=summation()}),
                    )

                  ],
                ),
                SizedBox(height: 20,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 5,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('2. Dry Cough',style: TextStyle(fontSize: 18,color: Colors.black,),),
                    new OutlineButton(
                      child: Text(pressAttention2?'Yes':'No'),
                      textColor: pressAttention2 ? Colors.red : Colors.green,
                      onPressed: () => setState(() =>{ pressAttention2 = !pressAttention2, count2=count2==1?0:1,sum=summation()}),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 5,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('3. Coughing up sputum',style: TextStyle(fontSize: 18,color: Colors.black),),
                    new OutlineButton(
                      child: Text(pressAttention3?'Yes':'No'),
                      textColor: pressAttention3 ? Colors.red : Colors.green,
                      onPressed: () => setState(() =>{ pressAttention3 = !pressAttention3, count3=count3==1?0:1,sum=summation()}),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 5,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('4. Short Breath',style: TextStyle(fontSize: 18,color: Colors.black),),
                    new OutlineButton(
                      child: Text(pressAttention4?'Yes':'No'),
                      textColor: pressAttention4 ? Colors.red : Colors.green,
                      onPressed: () => setState(() =>{ pressAttention4 = !pressAttention4, count4=count4==1?0:1,sum=summation()}),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 5,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('5. Bone/joint pain',style: TextStyle(fontSize: 18,color: Colors.black),),
                    new OutlineButton(
                      child: Text(pressAttention5?'Yes':'No'),
                      textColor: pressAttention5 ? Colors.red : Colors.green,
                      onPressed: () => setState(() =>{ pressAttention5 = !pressAttention5, count5=count5==1?0:1,sum=summation()}),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 5,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('6. Sore Throat',style: TextStyle(fontSize: 18,color: Colors.black),),
                    new OutlineButton(
                      child: Text(pressAttention6?'Yes':'No'),
                      textColor: pressAttention6 ? Colors.red : Colors.green,
                      onPressed: () => setState(() =>{ pressAttention6 = !pressAttention6, count6=count6==1?0:1,sum=summation()}),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 5,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('7. Headache',style: TextStyle(fontSize: 18,color: Colors.black),),
                    new OutlineButton(
                      child: Text(pressAttention7?'Yes':'No'),
                      textColor: pressAttention7 ? Colors.red : Colors.green,
                      onPressed: () => setState(() =>{ pressAttention7 = !pressAttention7, count7=count7==1?0:1,sum=summation()}),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 5,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('8. Chills',style: TextStyle(fontSize: 18,color: Colors.black),),
                    new OutlineButton(
                      child: Text(pressAttention8?'Yes':'No'),
                      textColor: pressAttention8 ? Colors.red : Colors.green,
                      onPressed: () => setState(() =>{ pressAttention8 = !pressAttention8, count8=count8==1?0:1,sum=summation()}),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 5,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('9. Nausea/Vomiting',style: TextStyle(fontSize: 18,color: Colors.black),),
                    new OutlineButton(
                      child: Text(pressAttention9?'Yes':'No'),
                      textColor: pressAttention9 ? Colors.red : Colors.green,
                      onPressed: () => setState(() =>{ pressAttention9 = !pressAttention9, count9=count9==1?0:1,sum=summation()}),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 5,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('10. Diarrhea',style: TextStyle(fontSize: 18,color: Colors.black),),
                    new OutlineButton(
                      child: Text(pressAttention10?'Yes':'No'),
                      textColor: pressAttention10 ? Colors.red : Colors.green,
                      onPressed: () => setState(() =>{ pressAttention10 = !pressAttention10, count10=count10==1?0:1,sum=summation()}),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 5,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('11. Pneumonia',style: TextStyle(fontSize: 18,color: Colors.black),),
                    new OutlineButton(
                      child: Text(pressAttention11?'Yes':'No'),
                      textColor: pressAttention11 ? Colors.red : Colors.green,
                      onPressed: () => setState(() =>{ pressAttention11 = !pressAttention11, count11=count11==1?0:1,sum=summation()}),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 5,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('12. Stuffy nose',style: TextStyle(fontSize: 18,color: Colors.black),),
                    new OutlineButton(
                      child: Text(pressAttention12?'Yes':'No'),
                      textColor: pressAttention12 ? Colors.red : Colors.green,
                      onPressed: () => setState(() =>{ pressAttention12 = !pressAttention12, count12=count12==1?0:1,sum=summation()}),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 5,),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: Container(
                    height: 2,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: 20,),
                RaisedButton(onPressed: _showcontent, color: Colors.blueAccent,
                  child:
                  new Text('Submit', style: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
