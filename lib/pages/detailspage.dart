import 'package:ecommerce1/model/itemo.dart';
import 'package:ecommerce1/provider/productsprov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../helper/customappbar.dart';

class detailsscreen extends StatefulWidget {
  detailsscreen({required this.yourdata});
  item yourdata ;
  @override
  State<detailsscreen> createState() => _detailsscreenState();
}

class _detailsscreenState extends State<detailsscreen> {
  bool more = true;

  @override
  Widget build(BuildContext context) {
    final cartinstance = Provider.of<cart>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Details Screen"),
        backgroundColor: Color(0xff764abc),
        actions: [appbarwidget()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                child: Image.asset(
                  widget.yourdata.yourimage,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 13,
            ),
            Text(
              "\$ ${widget.yourdata.yourprice}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("New"),
                  ),
                  color: Colors.green,
                ),
                //SizedBox(width: 15,),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.green,
                      size: 25,
                    ),
                    Text(
                      "Birds shop",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Details: ",
                        style: TextStyle(fontSize: 18),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  more == true
                      ? Text(
                          "Birds are a group of warm-blooded vertebrates constituting the class Aves eiviz characterised by feathers, toothless beaked jaws, the laying of hard-shelled eggs, a high metabolic rate, a four-chambered heart, and a strong yet lightweight skeleton. Birds live worldwide and range in size from the 5.5 cm (2.2 in) bee hummingbird to the 2.8 m (9 ft 2 in) common ostrich. There are about ten thousand living species, more than half of which are passerine, or perching birds. Birds have wings whose development varies according to species; the only known groups without wings are the extinct moa and elephant birds.",
                          style: TextStyle(fontSize: 16),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        )
                      : Text(
                          "Birds are a group of warm-blooded vertebrates constituting the class Aves eiviz characterised by feathers, toothless beaked jaws, the laying of hard-shelled eggs, a high metabolic rate, a four-chambered heart, and a strong yet lightweight skeleton. Birds live worldwide and range in size from the 5.5 cm (2.2 in) bee hummingbird to the 2.8 m (9 ft 2 in) common ostrich. There are about ten thousand living species, more than half of which are passerine, or perching birds. Birds have wings whose development varies according to species; the only known groups without wings are the extinct moa and elephant birds.",
                          style: TextStyle(fontSize: 16),
                        )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  more = !more ;
                });                
              },
              child: more == true
                  ? Text(
                      "Show more",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    )
                  : Text(
                      "Show less",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
