import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double rotate=0.0;
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height*0.11,
          backgroundColor: Color(0xffFFBB3B),
          centerTitle: true,
          title: Text('Task',style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Transform.rotate(
               angle: rotate,
                  child: Image.asset('assets/images/Group 24.png',)),
              Divider(
                color: Color(0xffFFBB3B),
                thickness: 2,
                height: 10,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color(0xffFFBB3B),
                    width: 2
                  )
                ),
                child:Text('$counter',style: TextStyle(
                  color:Color(0xffFFBB3B),
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),) ,
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.transparent
                      )
                    ),
                      onPressed: (){
                      rotate--;
                      counter--;

                      setState(() {

                      });

                      }, child:
                  Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                      color:  Color(0xffFFBB3B),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Card(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: ListTile(
                        leading: Icon(Icons.zoom_out,color:  Color(0xffFFBB3B),size: 30,),
                        title: Text('Left',style: TextStyle(
                          color:  Color(0xffFFBB3B),
                          fontSize: 22
                        ),),

                      ),
                    ),
                  )),
                  //Button zoom
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Colors.transparent
                          )
                      ),
                      onPressed: (){
                        rotate++;
                        counter++;
                        setState(() {

                        });

                      }, child:
                  Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                        color:  Color(0xffFFBB3B),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Card(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: ListTile(
                        leading: Icon(Icons.zoom_in,color:  Color(0xffFFBB3B),size: 30,),
                        title: Text('Right ',style: TextStyle(
                            color:  Color(0xffFFBB3B),
                            fontSize: 22
                        ),),

                      ),
                    ),
                  )),
                ],
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Colors.transparent
                      )
                  ),
                  onPressed: (){
                    rotate=0.0;
                    counter=0;
                    setState(() {

                    });

                  }, child:
              Container(
                width: MediaQuery.of(context).size.width*0.4,
                decoration: BoxDecoration(
                    color:  Color(0xffFFBB3B),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Card(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.delete,color:  Color(0xffFFBB3B),size: 30,),
                    title: Text('Reset ',style: TextStyle(
                        color:  Color(0xffFFBB3B),
                        fontSize: 22
                    ),),

                  ),
                ),
              )),
            ],
          ),
        ),

      ),
    );
  }
}