import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  late IO.Socket socket;
  @override
  void initState() {
    // TODO: implement initState
    socket = IO.io(
        "http://192.168.29.14:3000",
        IO.OptionBuilder()
            .setTransports(["websocket"])
            .disableAutoConnect()
            .build());
    socket.connect();

    socket.on('event', (data) => print(data));
    print(socket.connected);
    super.initState();
  }

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
                          if (i % 2 == 0) {
                            return chatBubble(true);
                          } else {
                            return chatBubble(false);
                          }
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

  Widget chatBubble(sender) {
    if (sender) {
      return Padding(
        padding:
            const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 50, right: 8.0),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
          child: Text(
            "Hello",
            textAlign: TextAlign.end,
          ),
        ),
      );
    } else {
      return Padding(
        padding:
            const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 50, left: 8.0),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.blue[200]),
          child: Text(
            "Hello",
            textAlign: TextAlign.start,
          ),
        ),
      );
    }
  }
}
