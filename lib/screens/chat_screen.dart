import 'package:flutter/material.dart';

import '../widgets/online_users.dart';
import '../widgets/messages.dart';
import '../widgets/chat_box.dart';

import '../models/user.dart';

import '../data/data.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          currentUser.name,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call_outlined,
            ),
            iconSize: 32.0,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit_note_outlined,
            ),
            iconSize: 32.0,
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            sliver: SliverToBoxAdapter(
              child: OnlineUsers(
                onlineUsers: onlineUsers
              )
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            sliver: SliverToBoxAdapter(
              child: Messages()
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((ctx, index) {
                final User user = chatList[index];
                return ChatBox(
                  user: user,
                );
              },
                childCount: chatList.length
              ),
            ),
          )
        ],
      )
    );
  }
}
