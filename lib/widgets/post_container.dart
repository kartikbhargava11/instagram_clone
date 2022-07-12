import 'package:flutter/material.dart';

import '../models/post.dart';

class PostContainer extends StatelessWidget {
  final Post post;
  const PostContainer({
    required this.post,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: _PostHeader(post: post),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Image(
              image: NetworkImage(
                post.imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
          _PostActions(
            post: post,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: _PostStats(
              post: post,
            ),
          )
        ],
      ),
    );
  }
}

class _PostStats extends StatelessWidget {
  final Post post;
  const _PostStats({
    required this.post,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${post.likes} likes",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Row(
          children: [
            Text(
              post.user.name,
              style: Theme.of(context).textTheme.headline6
            ),
            const SizedBox(
              width: 2.0,
            ),
            Text(
              post.caption,
              style: Theme.of(context).textTheme.caption
            )
          ],
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          "View all ${post.comments} comments",
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          post.timestamp,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12.0
          ),
        ),

      ],
    );
  }
}



class _PostActions extends StatelessWidget {
  final Post post;
  const _PostActions({
    required this.post,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        _PostButton(
          icon: Icon(
            Icons.favorite_border_outlined
          ),
        ),
        _PostButton(
          icon: Icon(
            Icons.chat_bubble_outline
          ),
        ),
        _PostButton(
          icon: Icon(
              Icons.send_outlined
          ),
        ),
        Spacer(),
        _PostButton(
          icon: Icon(
              Icons.bookmark_outline
          ),
        )
      ],
    );
  }
}



class _PostHeader extends StatelessWidget {
  final Post post;
  const _PostHeader({
    required this.post,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage(
            post.user.imageUrl
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          post.user.username,
          style: Theme.of(context).textTheme.headline6,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_horiz
          ),
        )
      ],
    );
  }
}


class _PostButton extends StatelessWidget {
  final Icon icon;
  const _PostButton({
    required this.icon,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: icon,
    );
  }
}


