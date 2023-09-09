import 'package:flutter/material.dart';

class TextFieldd extends StatelessWidget {
  String hint ;
  bool ispassword ;
  TextFieldd({required this.hint,this.ispassword= false}) ;
  @override
  Widget build(BuildContext context) {
    return TextField(
              obscureText: ispassword,
              decoration: InputDecoration(
                hintText: hint ,
                fillColor: Colors.grey,
                filled: true,
                
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.grey) 
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.grey) 
                ),
      
              ),
            );
  }
}