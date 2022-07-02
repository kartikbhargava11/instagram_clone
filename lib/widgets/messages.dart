import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Messages",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0
              )
            ),
            Spacer(),
            Text(
              "Requests",
              style: TextStyle(
                color: Colors.grey
              )
            )
          ],
        ),
      ],
    );
  }
}