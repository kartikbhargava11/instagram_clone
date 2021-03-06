import 'package:flutter/material.dart';

import '../models/story.dart';
import '../models/user.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;
  const Stories({
    required this.currentUser,
    required this.stories,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        itemCount: stories.length + 1,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        itemBuilder: (ctx, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: _AddStory(
                currentUser: currentUser
              ),
            );
          }
          final Story story = stories[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: _StoryViewer(
              story: story,
            )
          );
        },
      ),
    );
  }
}


class _AddStory extends StatelessWidget {
  final User currentUser;
  const _AddStory({
    required this.currentUser,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return SizedBox(
        height: 75,
        width: 75,
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                      currentUser.imageUrl
                  ),
                ),
                Positioned(
                  bottom: -1.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                        color: isDarkMode ? Colors.black : Colors.white,
                        width: 4.0
                      ),
                      shape: BoxShape.circle
                    ),
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              "Add Story",
              style: Theme.of(context).textTheme.bodyText2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
    );
  }
}


class _StoryViewer extends StatelessWidget {
  final Story story;
  const _StoryViewer({
    required this.story,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 75,
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.red,
                  Colors.pink
                ]
              )
            ),
            child: Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      story.imageUrl,
                    ),
                    fit: BoxFit.cover
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            story.user.username,
            style: Theme.of(context).textTheme.bodyText2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

