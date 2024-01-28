import 'package:chat_app/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.chatModel,});
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.yellow,
            ),
            title: Text(
              chatModel.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
