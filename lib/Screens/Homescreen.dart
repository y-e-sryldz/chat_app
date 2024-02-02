import 'package:chat_app/CustomUI/CustomCard.dart';
import 'package:chat_app/Model/ChatModel.dart';
import 'package:chat_app/Screens/SelectContact.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<ChatModel> chat = [
    ChatModel(
      name: "Sari",
      icon: "sari",
      isGroup: false,
      time: "18.04",
      currentMessage: "dc gel",
    ),
    ChatModel(
      name: "Eynallı",
      icon: "eyn",
      isGroup: false,
      time: "04.45",
      currentMessage: "bilet buldummm",
    ),
    ChatModel(
      name: "Neva",
      icon: "neva",
      isGroup: false,
      time: "07.50",
      currentMessage: "yurdun önüne geldim",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: SizedBox(
          height: 42,
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search),
              labelText: 'Search',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 32, left: 14),
          child: Text(
            "Chat",
            style: TextStyle(fontSize: 25),
          ),
        ),
        leadingWidth: 78,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => SelectContact()));
            },
            icon: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Column(children: [
        Container(
          height: 5,
          color: Color(0xFFEEEEEE),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chat.length,
            itemBuilder: (context, index) => CustomCard(chatModel: chat[index]),
          ),
        ),
      ]),
    );
  }
}
