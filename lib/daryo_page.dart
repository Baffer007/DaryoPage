

import 'package:daryo_page/pages/letest_page.dart';
import 'package:flutter/material.dart';

import 'drawer_header.dart';

class DaryoPage extends StatefulWidget {
  const DaryoPage({Key? key}) : super(key: key);

  @override
  State<DaryoPage> createState() => _DaryoPageState();
}

class _DaryoPageState extends State<DaryoPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child:ListView(children:[
          MyDrawerHeader(),
            ListTile(title: Text("Salom"),),
          ],

          ),


        ),
        appBar: AppBar(
          title: const Text("Daryo"),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(child: Text("SO'NGGI YANGILIKLAR"),),
              Tab(child: Text("ASOSIY YANGILIKLAR"),),
              Tab(child: Text("ENG KO'P O'QILGAN"),),
            ],
          ),
        ),
        body: const TabBarView(
           children: [
             LatestPage(),
             Text('Dunyo yangiliklari'),
             Text('Yangiliklar faqat bizda'),
           ],
        ),
      ),
    );
  }
}
