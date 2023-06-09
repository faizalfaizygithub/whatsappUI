import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String name;

  const ChatPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            radius: 180,
          ),
        ),
        title: Text(name),
      ),
      bottomSheet: const Padding(
        padding: EdgeInsets.only(left: 10, right: 80, bottom: 5),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(color: Colors.grey)),
            hintText: 'Type a message',
            prefixIcon: Icon(
              Icons.add,
              size: 30,
            ),
            prefixIconColor: Colors.black54,
            suffixIcon: Icon(
              Icons.camera_enhance,
              size: 30,
            ),
            suffixIconColor: Color.fromARGB(255, 87, 80, 80),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 15, bottom: 10),
        child: FloatingActionButton(
          isExtended: false,
          onPressed: () {},
          child: Icon(
            Icons.keyboard_voice,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
