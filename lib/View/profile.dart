import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              minRadius: 50,
              child: FlutterLogo(),
            ),
            Text(
              "USER NAME",
              style: TextStyle(fontSize: 25),
            ),
            Text("Status"),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Privacy/Security"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Invite a Friend"),
            )
          ],
        ),
      ),
    ));
  }
}
