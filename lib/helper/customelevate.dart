import 'package:flutter/material.dart';

class button extends StatelessWidget {
   button({required this.text,this.yourcolor= Colors.purpleAccent});
  String text ;
  Color yourcolor ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              onPressed:(){},
              child: Text(text,style:TextStyle(fontSize:17),),
              style: ElevatedButton.styleFrom(backgroundColor:yourcolor),
               );
  }
}