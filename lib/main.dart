import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
     MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dadu'),
        backgroundColor: Colors.deepPurple,
      ),
      body: DicePage(

      ),
      ),
      ),
    );
  }
class DicePage extends StatefulWidget{
  @override
  _DicePageState createState()=> _DicePageState();
}
class _DicePageState extends State<DicePage>{
  int leftDaduNumber = 1;
  int rightDaduNumber = 1;

  void changeDaduFace(){
    setState(() {
      leftDaduNumber = Random().nextInt(4)+1;
      rightDaduNumber = Random().nextInt(4)+1;
    });
  }
  @override
  Widget build(BuildContext context){
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDaduFace();
                  print('daduNumber = $leftDaduNumber');
              },
              child: Image.asset('images/dadu$leftDaduNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: (){
                  changeDaduFace();
                    print('Right button got pressed');
                },
                child: Image.asset('images/dadu$rightDaduNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}

