import 'package:daryo_page/models/news.dart';
import 'package:flutter/material.dart';

class LatestPage extends StatelessWidget {
  const LatestPage({Key? key}) : super(key: key);

  static List<News> newsList = [
    News(
        title: "O‘zbekistonliklar bir kunda\n86 milliondan ortiq\nRossiya rubli sotib oldi",
        content: "Maslahat",
        imageUrl: "assets/images/image_daryo4.jpg",
        watchCount: 11496,
        data: "20:57 Bugun"
    ),
    News(
        title: '"Kombinatda nodir \n metallar ishlab chiqarilish\n hajmi oshiriladi"',
        content: "Mahalliy",
        imageUrl: "assets/images/image_daryo3.jpg",
        watchCount: 10523,
        data: "15:00 Bugun"
    ),
    News(
        title: 'Yevro—2028 musobaqasiga\nmezbonlik qiladigan davlatlar\nnomi deyarli aniq bo‘ldi',
        content: "Dunyo",
        imageUrl: "assets/images/image_daryo1.jpg",
        watchCount: 14587,
        data: "11:42 Bugun"
    ),
    News(
        title:'O‘zgidromet 5—6-mart \nkunlari Qamchiq dovonida\nob-havo keskin yomonlashi\nhaqida ogohlantirdi',
        content: "Ob havo",
        imageUrl: "assets/images/image_daryo2.jpg",
        watchCount: 1230,
        data: "11:42"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 4 ,
        itemBuilder: (BuildContext context, int index) {
          return newsCard(newsList[index]);
        },

      ),
    );
  }
}

Widget newsCard (News news) {
  return Container(
    height: 200,
    child: Card(
      elevation: 2,
      child: Column(

        children:
        [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

            Text(news.content,style: TextStyle(color: Colors.blue[800],fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
              Text("${news.data}  | "),
                Icon(Icons.visibility_outlined,
                color: Colors.blue[300],),
                Text(news.watchCount.toString()),



            ],),




          ],

          ),
          Row(

            children: [


             Container(
               padding: EdgeInsets.all(2),
               margin: EdgeInsets.all(0),
               height: 120,
                 width: 200,
                 child: Image.asset(news.imageUrl)),
              Text(news.title),

            ],

          ),

        ],
      ),
    ),
  );
}