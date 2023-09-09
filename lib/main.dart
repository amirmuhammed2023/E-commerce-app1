import 'package:ecommerce1/pages/checkoutpage.dart';
import 'package:ecommerce1/pages/detailspage.dart';
import 'package:ecommerce1/pages/homepage.dart';
import 'package:ecommerce1/pages/loginpage.dart';
import 'package:ecommerce1/pages/registerpage.dart';
import 'package:ecommerce1/provider/productsprov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  
  runApp( bussinesscard());
}

// ignore: camel_case_types
class bussinesscard extends StatelessWidget {
   bussinesscard({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    create: (context) {return cart();},
    child: MaterialApp(home: home(),
    debugShowCheckedModeBanner: false,
    ),
);
    
  }
}