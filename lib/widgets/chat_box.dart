import 'package:flutter/material.dart';

import '../models/user.dart';

class ChatBox extends StatelessWidget {
  final User user;
  const ChatBox({
    required this.user,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              user.imageUrl,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: Theme.of(context).textTheme.caption,
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                user.lastOnline,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0
                )
              )
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
            ),
            iconSize: 30.0,
          )
        ],
      ),
    );
  }
}
