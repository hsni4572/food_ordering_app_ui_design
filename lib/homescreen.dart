// ignore_for_file: camel_case_types, prefer_const_constructors, must_be_immutable, use_full_hex_values_for_flutter_colors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  homescreen({super.key});

  List foods = ["Burger", "Pizza", "Snacks", "Water"];
  List foods2 = ["Chicken Burger", "Cheese Pizza"];
  List<Color> bgColors = [
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color(0xFFEFCFE7),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deliver To',
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.redAccent,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Millat Motors Khanpur',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.redAccent,
                          ),
                          SizedBox(width: 70),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.account_box,
                              size: 28,
                              color: Colors.redAccent,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F3F3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                          hintText: 'Search Your Food Here...!',
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.redAccent,
                          )),
                    )),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 45,
                    width: 45,
                    // padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.filter_list,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
