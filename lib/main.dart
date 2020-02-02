import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

const String title = 'SUMMARY';
const String desc = 'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.';

const String title1 = 'DID YOU KNOW';
const String desc1 = 'There are three city that surrounded Mount Fuji:'
                     'Gotemba, Fujiyoshida and Fujinomiya.';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('TOURISM and CO.'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/fuji.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          descriptionSection(title, desc),
          descriptionSection(title1, desc1),
          book,
        ],
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
  // color: Colors.green,
  child: Row(
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('MOUNT', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('FUJI', style: TextStyle(fontWeight: FontWeight.bold)),
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'DAY 1: 9:30AM - 1:30PM',
                  style: TextStyle(
                    color: Colors.red[800],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 5, top: 5),
                child: Text(
                  'STANDART PACKAGE',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  ),
);

Container descriptionTitleSection(String title){
  return Container(
    padding: EdgeInsets.only(top: 32, left: 32, right: 32),
    child: Row(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

Container descriptionDescriptionSection(String text){
  return Container(
    padding: EdgeInsets.only(left: 32, right: 32, top: 5),
    child: Text(
      text,
      softWrap: true,
    ),
  );
}

Container descriptionSection(String title, String desc) {
  return Container(
    child: Column(
      children: <Widget>[
        descriptionTitleSection(title),
        descriptionDescriptionSection(desc),
      ],
    ),
  );
}

Widget book = Container(
  color: Colors.red[600],
  padding: EdgeInsets.all(20),
  margin: EdgeInsets.all(50),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        'BOOK',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    ],
  ),
);