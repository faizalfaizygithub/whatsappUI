import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String image;
  final String msg;
  final String time;

  const ChatTile(
      {super.key,
      required this.name,
      required this.image,
      required this.msg,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: image != null
          ? Padding(
              padding: const EdgeInsets.only(
                right: 8,
              ),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(image),
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(
                right: 8,
              ),
              child: Icon(
                Icons.account_circle,
                size: 55,
                color: Colors.grey.shade500,
              ),
            ),
      minVerticalPadding: 0,
      horizontalTitleGap: 5,
      trailing: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          time,
          style: TextStyle(color: Colors.grey.shade500),
        ),
      ),
      title: Text(
        name,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 19,
        ),
      ),
      subtitle: Text(
        msg,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey.shade500,
        ),
      ),
    );
  }
}
