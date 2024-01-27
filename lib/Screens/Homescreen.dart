import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.clear),
              labelText: 'Search',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
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
            onPressed: () {},
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
    );
  }
}
