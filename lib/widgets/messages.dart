import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Messages",
          style: Theme.of(context).textTheme.headline5,
        ),
        const Spacer(),
        const Text(
          "Requests",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.grey
          )
        )
      ],
    );
  }
}