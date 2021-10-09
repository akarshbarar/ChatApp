import 'package:chatapp/View/call.dart';
import 'package:chatapp/View/chat.dart';
import 'package:chatapp/View/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectdIndex = 0;

  var bnb = <Widget>[
    ListView.builder(
        itemCount: 100,
        itemBuilder: (context, i) {
          return ListTile(
            leading: CircleAvatar(
              child: FlutterLogo(),
            ),
            title: Text("user $i"),
            subtitle: Text("message $i"),
            onTap: () {
              Get.to(Chat());
            },
          );
        }),
    Call(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Chat App"),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: bnb[selectdIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectdIndex,
        onTap: (i) {
          setState(() {
            selectdIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    ));
  }
}
