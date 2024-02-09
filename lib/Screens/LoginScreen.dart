import 'package:chat_app/CustomUI/ButtonCard.dart';
import 'package:chat_app/CustomUI/ContactCard.dart';
import 'package:chat_app/Model/ChatModel.dart';
import 'package:chat_app/Screens/Homescreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late ChatModel sourceChat;
  
  List<ChatModel> chatmodels = [
    ChatModel(
      id: 1,
      name: "Sari",
      icon: "sari",
      isGroup: false,
      time: "18.04",
      currentMessage: "dc gel",
    ),
    ChatModel(
      id: 2,
      name: "Eynallı",
      icon: "eyn",
      isGroup: false,
      time: "04.45",
      currentMessage: "bilet buldummm",
    ),
    ChatModel(
      id: 3,
      name: "Neva",
      icon: "neva",
      isGroup: false,
      time: "07.50",
      currentMessage: "yurdun önüne geldim",
    ),
  ];
   @override
  void initState() {
    super.initState();
    sourceChat = chatmodels.first;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatmodels.length,
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  sourceChat = chatmodels.removeAt(index);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => Homescreen(
                                chatmodels: chatmodels,
                                sourchat: sourceChat,
                              )));
                },
                child: ButtonCard(
                  name: chatmodels[index].name,
                  icon: Icons.person,
                ),
              )),
    );
  }
}
