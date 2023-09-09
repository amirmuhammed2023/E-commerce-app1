import 'package:ecommerce1/helper/customappbar.dart';
import 'package:ecommerce1/helper/customelevate.dart';
import 'package:ecommerce1/model/itemo.dart';
import 'package:ecommerce1/provider/productsprov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class check extends StatelessWidget {
  const check({super.key});

  @override
  Widget build(BuildContext context) {
    final cartinstance = Provider.of<cart>(context);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context) ; 
            },
          ),
          title: Text("Check Out"),
          backgroundColor: Color(0xff764abc),
          actions: [
            appbarwidget(),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartinstance.itemproduct.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    //width: double.infinity,
                    //height: ,
                    child: Card(
                      //color: Colors.pinkAccent,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(cartinstance.itemproduct[index].yourimage),
                        ),
                        trailing: IconButton(
                          icon:Icon(Icons.remove),
                          onPressed: () {
                            cartinstance.remove(cartinstance.itemproduct[index]) ;
                          },
                         ),
                        title: Text(
                          cartinstance.itemproduct[index].yourname,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle:Text("\$ ${cartinstance.itemproduct[index].yourprice}"),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button(text: "Total: \$ ${cartinstance.p}",yourcolor:Colors.purpleAccent,),
                  SizedBox(width: 20,),
                  button(text: "Buy",yourcolor:Color(0xff764abc),),
                ],
              ),
            ),
          ],
        ));
  }
}
