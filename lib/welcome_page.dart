// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_design/homescreen.dart';

class welcome_page extends StatelessWidget {
  const welcome_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('assets/images/boy.png'),
          SizedBox(
            height: 1,
          ),
          Text(
            'Order Your Food Now...!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Order Your Loved Food Now And Get Delivery At Your Doorstep!',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 160,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => homescreen()));
            },
            child: Container(
              height: 60,
              width: 280,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Explore Now',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
