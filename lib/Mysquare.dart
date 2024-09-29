import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Mysqauer extends StatelessWidget {
  const Mysqauer({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.0),
      
      child: Container(
       
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color:Color.fromARGB(255, 3, 54, 240),width:5, ),
       
      ),
       height: 400.0,
         
    ),
      
    );
    
  }
  
}

