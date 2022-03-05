
import 'dart:ui';

import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(


        decoration: BoxDecoration(color: Colors.blue),
        child:
        Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              Text("Daryo",style: TextStyle(color: Colors.white,fontSize: 28),),
            ],
          ),
          Row(),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Toshkent',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Icon(
                    Icons.wb_cloudy_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '+15',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.white,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              currency(Icons.monetization_on_outlined,"10880"),
              currency(Icons.euro_sharp,"12200"),
              currency(Icons.euro_sharp ,"156"),

            ],

          ),
        ]));
  }
}

Widget currency(IconData icon, String course) {
  return  Row(
    children: [
      Icon(
        icon,
        color: Colors.white,
      ),
      Text(
        course,
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}
