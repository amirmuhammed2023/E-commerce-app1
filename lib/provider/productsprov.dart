import 'package:ecommerce1/model/itemo.dart';
import 'package:flutter/material.dart';

class cart with ChangeNotifier{
  List<item> itemproduct = [] ;
  double p = 0 ;

  add(item product){
    itemproduct.add(product) ;
    p += product.yourprice.round() ;
       notifyListeners() ;

  }
 
  remove(item product){
    itemproduct.remove(product) ;
    p -= product.yourprice.round() ;
    notifyListeners() ;
  }
  
}