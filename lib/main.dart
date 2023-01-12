import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Team Group")),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
              context: context,
              color: Colors.blue,
              blocktext: "นางสาวอมาญาวีณ์ สุทธมงคล",
              imgPath:
                  "lib/asset/images/207378974_2930336043950727_95113088277812985_n.jpg",
              nickname: "ณซอร์",
              ID: "ID: 633410090-8",
              fack: "Fackbook: ญาวีณ์.",
              about: "คำที่บ่งบอกความเป็นตัวเอง : if I wake up late it wouldn't be pretty"),
          Card(
              context: context,
              color: Colors.blue,
              blocktext: "นายภาณุวิชญ์ ปัสสาโท",
              imgPath:
                  "lib/asset/images/320454681_552617686797776_5006371775841199561_n.jpg",
              nickname: "เฟรน",
              ID: "ID: 633410026-7",
              fack: "Fackbook : Panuwit Passatho",
              about: "คำที่บ่งบอกความเป็นตัวเอง : หัวโล้น"),
            
        ],
      ),
    );
  }

  Widget Card(
      {required BuildContext context,
      required Color color,
      required String blocktext,
      required String imgPath,
      required String nickname,
      required String ID,
      required String fack,
      required String about}) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        name: blocktext,
                        imPath: imgPath,
                        Nickname: nickname,
                        id: ID,
                        Fackbook: fack,
                        About: about,
                      )));
        },
        child: Column(
          children: [
            CircleAvatar(radius: 60, backgroundImage: NetworkImage(imgPath)),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                //margin: EdgeInsets.all(10),
                color: color,
                child: Text(blocktext)),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {required this.name,
      required this.Nickname,
      required this.imPath,
      required this.id,
      required this.Fackbook,
      required this.About});
  String name;
  String Nickname;
  String imPath;
  String id;
  String Fackbook;
  String About;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter App"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              CircleAvatar(radius: 120, backgroundImage: NetworkImage(imPath)),
              Padding(padding: EdgeInsets.all(10.0)),
              Text(name),
              Text(id),
              Text(Nickname),
              Text(Fackbook),
              Text(About),
            ],
          ),
        ));
  }
}
