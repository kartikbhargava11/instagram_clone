import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import './chat_screen.dart';

import '../widgets/stories.dart';
import '../widgets/post_container.dart';

import '../data/data.dart';

import '../models/post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            title: const Image(
             image: NetworkImage(
               "https://logos-world.net/wp-content/uploads/2020/05/Instagram-Logo-2016-present.png"
             ),
              fit: BoxFit.cover,
              height: 80,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_box_outlined, color: Colors.black),
                iconSize: 32.0,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const ChatScreen()));
                },
                icon: const Icon(MdiIcons.facebookMessenger, color: Colors.black),
                iconSize: 32.0,
              )
            ],
          ),
          SliverToBoxAdapter(
              child: Stories(
                currentUser: currentUser,
                stories: stories,
              )
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((ctx, index) {
              final Post post = posts[index];
              return PostContainer(
                post: post
              );
            },
            childCount: posts.length
            ),
          )
        ],
      ),
    );
  }
}
