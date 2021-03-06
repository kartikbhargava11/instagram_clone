import 'package:flutter/material.dart';

import '../models/user.dart';

class OnlineUsers extends StatelessWidget {
  final List<User> onlineUsers;
  const OnlineUsers({
    required this.onlineUsers,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        itemCount: onlineUsers.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          final User user = onlineUsers[index];
          return _CircularBox(
            user: user
          );
        }
      )
    );
  }
}

class _CircularBox extends StatelessWidget {
  final User user;
  const _CircularBox({
    required this.user,
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
                radius: 30,
                backgroundImage: NetworkImage(
                  user.imageUrl,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                    border: Border.all(
                      color: isDarkMode ? Colors.black : Colors.white,
                      width: 4.0,
                    )
                  ),
                )
              )
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            user.name,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText2
          )
        ],
      ),
    );
  }
}
