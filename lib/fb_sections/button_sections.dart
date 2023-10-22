import 'package:flutter/material.dart';

class heaerbuttonsecton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget vdivider = VerticalDivider(
      thickness: 3,
      color: Colors.grey[400],
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.video_call,
                color: Colors.red,
              ),
              label: Text("Live")),
          vdivider,
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.photo_library,
                color: Colors.green,
              ),
              label: Text("Photo")),
          vdivider,
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.video_call,
                color: Colors.purple,
              ),
              label: Text("Room")),
        ],
      ),
    );
  }
}
