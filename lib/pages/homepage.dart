import 'package:ecommerce1/helper/customappbar.dart';
import 'package:ecommerce1/pages/detailspage.dart';
import 'package:ecommerce1/provider/productsprov.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce1/model/itemo.dart';
import 'package:provider/provider.dart';

import 'checkoutpage.dart';

class home extends StatelessWidget { 
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    final cartinstance = Provider.of<cart>(context);
    return Scaffold(
      appBar:AppBar(
        title: Text("Home"),
        backgroundColor: Color(0xff764abc),
        actions: [
         appbarwidget()
        ],
      ),
      drawer:Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPictureSize:Size.square(80) ,
                  currentAccountPicture: CircleAvatar(backgroundImage:AssetImage("assets/images/Indigo-Bunting.jpg")),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/download.jpg"),
                    fit: BoxFit.cover
                    ),
                  ),
                  accountName: Text("Amir mohammed",style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold) ,), 
                  accountEmail: Text("amirmero071@gmail.com",style: TextStyle(fontSize: 14),)
                  ),
                GestureDetector(
                  onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => home(),)) ;
                  },
                  child: ListTile(
                    title: Text("Home", style: TextStyle(fontSize: 15),),
                    leading:Icon(Icons.home,size: 25,) ,
                  ),
                ),  
                GestureDetector(
                  onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => check(),)) ;
                  },
                  child: ListTile(
                    title: Text("My products", style: TextStyle(fontSize: 15),),
                    leading:Icon(Icons.shopping_cart_checkout,size: 25,) ,
                  ),
                ),
                GestureDetector(
                  onTap:(){},
                  child: ListTile(
                    title: Text("About", style: TextStyle(fontSize: 15),),
                    leading:Icon(Icons.question_mark,size: 25,) ,
                  ),
                ),  
                GestureDetector(
                  onTap:(){},
                  child: ListTile(
                    title: Text("Log out", style: TextStyle(fontSize: 15),),
                    leading:Icon(Icons.logout,size: 25,) ,
                  ),
                ),    
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text("Devoloped by Amir mohammed @ 2023",style:TextStyle(fontWeight:FontWeight.bold),),
            )
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          childAspectRatio: 2/3 ,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: items.length, 
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => detailsscreen(yourdata:items[index],),
                )
              ) ;
              },
              child: GridTile(
                child: Container(
                  decoration:BoxDecoration(
                    image: DecorationImage(
                     // fit: BoxFit.contain,
                      image:AssetImage(items[index].yourimage,) 
                      )
                  ),
                  //color: Colors.amber,
                ),
                header: GridTileBar(
                  backgroundColor: Colors.white,
                  leading: Text(items[index].yourname,style: TextStyle(color:Colors.blueGrey,fontSize:17,fontWeight:FontWeight.bold),),
                  trailing: IconButton(onPressed:(){}, icon:Icon(Icons.favorite,color:Colors.red,)),
                ),
                footer: GridTileBar(
                  backgroundColor: Colors.white,
                  leading: Text("\$ ${items[index].yourprice}",style: TextStyle(fontWeight:FontWeight.bold,color:Colors.black),),
                  title: Text(""),
                  trailing: IconButton(
                    icon:Icon(Icons.plus_one_outlined,color:Colors.black,), 
                    onPressed: () {
                       cartinstance.add(items[index]) ;
                    },
                    ),
                ),
                ),
            ),
          ) ;
        },
        ),
    );
  }
}