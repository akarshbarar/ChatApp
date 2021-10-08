import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, i) {
            return ListTile(
              leading: CircleAvatar(
                child: FlutterLogo(),
              ),
              title: Text("user $i"),
              onTap: () {},
              trailing: Icon(Icons.call),
            );
          }),
    );
  }
}
