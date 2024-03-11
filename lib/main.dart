import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height*0.11,
          backgroundColor: Colors.green,
          title: Text('Chats',style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),),
        ),
        body: Center(
          child: Container(
            color: Colors.green,
            height: MediaQuery.of(context).size.height*0.10,
            width: double.infinity,
            child: Center(child: Text('Sandra',style: TextStyle(
              fontSize: 25,
            ),)),
          ),
        ),
      ),
    );
  }
}