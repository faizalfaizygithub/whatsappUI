import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/components/chatTiles.dart';
import 'package:whatsapp/components/divider.dart';
import 'package:whatsapp/components/whaDab.dart';
import 'package:whatsapp/screens/callScreen.dart';
import 'package:whatsapp/screens/chatPage.dart';
import 'package:whatsapp/screens/statusScreen.dart';
import 'package:whatsapp/whatsappData.dart';
import 'package:whatsapp/components/chatTiles.dart';

Data data = Data();

class ChatScreen extends StatelessWidget {
  static const String id = 'chatscreen';
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff075e54),
        title: const Text(
          'Whatsapp',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 28,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.ellipsis_vertical,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
        bottom: AppBar(
          backgroundColor: const Color(0xff075e54),
          leading: Container(
            child: Icon(
              Icons.camera_alt_rounded,
              size: 28,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          actions: [
            WhatsAppDabs(
                label: 'CHATS',
                fn: () {
                  Navigator.pushNamed(context, ChatScreen.id);
                }),
            WhatsAppDabs(
                label: 'STATUS',
                fn: () {
                  Navigator.pushNamed(context, StatusScreen.id);
                }),
            WhatsAppDabs(
                label: 'CALLS',
                fn: () {
                  Navigator.pushNamed(context, CallScreen.id);
                }),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.message,
            ),
            backgroundColor: Color(0xff25D366),
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ChatTile(
                name: data.chat.values.elementAt(index).elementAt(0),
                image: data.chat.values.elementAt(index).elementAt(1),
                msg: data.chat.values.elementAt(index).elementAt(2),
                time: data.chat.values.elementAt(index).elementAt(3),
              ),
          separatorBuilder: (context, index) => Seperator(),
          itemCount: data.chat.length),
    );
  }
}
