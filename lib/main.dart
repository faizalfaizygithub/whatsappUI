import 'package:flutter/material.dart';
import 'package:whatsapp/screens/callScreen.dart';
import 'package:whatsapp/screens/chatScreen.dart';
import 'package:whatsapp/screens/statusScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: ChatScreen.id,
      routes: {
        ChatScreen.id: (context) => ChatScreen(),
        StatusScreen.id: (context) => StatusScreen(),
        CallScreen.id: (context) => CallScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
