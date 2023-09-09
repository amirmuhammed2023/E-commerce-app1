import 'package:ecommerce1/helper/customelevate.dart';
import 'package:ecommerce1/helper/customtext.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(44),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldd(hint:"Enter your E-mail",),
            SizedBox(height: 25),
            TextFieldd(hint:"Enter your Password",ispassword:true,),
            SizedBox(height: 25),
            button(text: "Sign in"),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don not have an account ? "),
                InkWell(
                  child: Text ("Sign up",style: TextStyle(fontWeight:FontWeight.bold),),
                  onTap: (){
                  },
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}