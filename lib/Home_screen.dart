import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled6/MYSquare.dart';
import 'package:untitled6/pageTwo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
        appBar: AppBar(
           backgroundColor:   Color.fromARGB(79, 74, 87, 101),
          title: Text("Screen2",style:TextStyle(color: Color.fromARGB(255, 17, 45, 205),fontWeight:FontWeight.bold, ) ),
      
        ),


         floatingActionButton:FloatingActionButton(onPressed: (){
         Navigator.pop(context);
         },
       backgroundColor:Color.fromARGB(255, 63, 98, 255) ,
       splashColor: Color.fromARGB(255, 202, 202, 208) ,

child:Icon( Icons.arrow_back ,
   size:30,
),
       ) ,


        body: ListView.builder(
          
          itemCount: 7,
          itemBuilder: (context, index) {
            return Mysqauer();

          },
        )
      
        );
  }
}
  // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Expanded(
        //       child: Container(
        //         width: 100,
        //         color: Colors.deepPurple[600],
        //       ),
        //     ),
        //     Container(
        //       width: 100.0,
        //       height: 100.0,
        //       color: Colors.deepPurple[400],
        //     ),
        //     Container(
        //       width: 100.0,
        //       height: 100.0,
        //       color: Colors.deepPurple[200],
        //     ),
        //   ],
        // ),

        // body: Row(
        //   children: [
        //     Expanded(
        //       child: Container(
        //         color: Colors.deepPurple,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.pink,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.amberAccent,
        //       ),
        //     ),
        //   ],
        // ),

        // body: Center(
        //   child: Container(
        //     alignment: Alignment(0.2, 0.7),
        //     //margin: EdgeInsets.symmetric(horizontal: 50),
        //     // padding: EdgeInsets.all(24.0),
        //     height: 200,
        //     width: 200.0,
        //     decoration: BoxDecoration(
        //         //borderRadius: BorderRadius.circular(100),
        //         //color: Colors.deepPurple,
        //         //shape: BoxShape.rectangle,
        //         border: Border.all(color: Colors.black, width: 5),
        //         borderRadius: BorderRadius.circular(10)),
        //     child: Text("emran"),
        //   ),
        // ),
        // //),