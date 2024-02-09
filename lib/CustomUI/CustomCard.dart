import 'package:chat_app/Model/ChatModel.dart';
import 'package:chat_app/Screens/IndividualPage.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    super.key,
    required this.chatModel,
    required this.sourchat,
  });
  final ChatModel chatModel;
  final ChatModel sourchat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => IndividualPage(
                          chatModel: chatModel,
                          sourchat: sourchat,
                        )));
          },
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: Text(chatModel.icon),
            ),
            title: Text(
              chatModel.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              chatModel.currentMessage,
              style: TextStyle(fontSize: 13),
            ),
            trailing: Text(chatModel.time),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(
            thickness: 1.5,
            color: Color(0xFFEEEEEE),
          ),
        ),
      ],
    );
  }
}
