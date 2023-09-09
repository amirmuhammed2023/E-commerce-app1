import 'package:ecommerce1/pages/checkoutpage.dart';
import 'package:ecommerce1/provider/productsprov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class appbarwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartinstance = Provider.of<cart>(context) ;
    return Stack(
            children: [
              Positioned(
                top: -3,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text("${cartinstance.itemproduct.length}",style: TextStyle(fontSize: 16),),
                  ),
                ),
              ),
              Row(children: [
                IconButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => check(),)) ;
                  },
                   icon: Icon(Icons.shopping_cart_outlined),
                   ),
                Text("\$ ${cartinstance.p} ",style: TextStyle(fontSize: 16),) ,   
              ],),
            ],
          );
  }
}