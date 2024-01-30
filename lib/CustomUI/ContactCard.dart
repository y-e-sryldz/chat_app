import 'package:chat_app/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key,required this.contact, required contacts});
  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 23,
          child: Text(
            "icon",
            style: TextStyle(color: Colors.black),
          ),
        ),
        title: Text(
          "Samet Dursun",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Ben Devoloper im",
          style: TextStyle(fontSize: 13),
        ),
      ),
    );
  }
}
