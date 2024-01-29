import 'package:chat_app/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({super.key, required this.chatModel});
  final ChatModel chatModel;

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 88,
        titleSpacing: 10,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 24,
                )),
            CircleAvatar(
              child: Text(widget.chatModel.icon),
              radius: 20,
              backgroundColor: Colors.blueGrey,
            )
          ],
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.chatModel.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "online",
              style: TextStyle(fontSize: 13),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5, top: 10),
            child: Container(
              width: 80,
              height: 50,
              child: TextButton(
                onPressed: () => {},
                child: const Text('Profile'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  side: BorderSide(width: 1.5),
                  textStyle: const TextStyle(
                    fontSize: 13,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: Container(
              width: 80,
              height: 50,
              child: TextButton(
                onPressed: () => {},
                child: const Text('Call'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 13,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 100,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 5,
              color: Color(0xFFEEEEEE),
            ),
          ),
          ListView(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                
                Container(
                  width: MediaQuery.of(context).size.width - 60,
                  child: Card(
                    margin: EdgeInsets.only(right: 2, left: 2, bottom: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintText: "Type a message",
                          border: InputBorder.none,
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.attach_file),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.camera_alt),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8, right: 2),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFFF4A09),
                    radius: 23,
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
