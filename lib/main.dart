// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
    home:
    Scaffold(
    backgroundColor: Colors.blueGrey[200],

    appBar: AppBar(
      backgroundColor: Colors.yellowAccent,
      title:  const Text("Flutter 2..-02",style: TextStyle(
          color: Colors.black,fontSize: 30),
      ),
    ),
      body:   MyHome(),
    ),
    ),

  );
}
class  MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int PhotoChanger=1;
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
       children:  [
          CircleAvatar(
            radius: 50,
           backgroundImage: AssetImage('Image/Pass.jpeg'),
         ),
      Text("Mamit Kumar ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      SizedBox(
        height: 30,
      ),
      Container(
            child: FlatButton
              (onPressed: () {
                setState(() {
                  PhotoChanger++;
                  if(PhotoChanger==6){
                    PhotoChanger=1;
                  }
                });

            },
              child: Image.asset('Image/ball$PhotoChanger.png')),
          )
       ],
        ),
      );
  }
}
