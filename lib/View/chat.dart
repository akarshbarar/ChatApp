import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("User Name"),
              centerTitle: true,
              elevation: 0,
            ),
            body: Column(
              children: [
                Expanded(
                    flex: 9,
                    child: ListView.builder(
                        itemCount: 100,
                        itemBuilder: (context, i) {
                          return chatBubble();
                        })),
                Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            child: TextFormField(
                          decoration: InputDecoration(hintText: "Message"),
                        )),
                        FloatingActionButton(
                            child: Icon(Icons.send), onPressed: () {})
                      ],
                    )),
              ],
            )));
  }

  Widget chatBubble() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.blue[200]),
        child: Text("Hello"),
      ),
    );
  }
}
