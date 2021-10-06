import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            body: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: FlutterLogo(),
                    ),
                    title: Text("user $i"),
                    subtitle: Text("message $i"),
                  );
                })));
  }
}
