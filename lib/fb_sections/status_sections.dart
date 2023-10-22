import 'package:fb_clone_main/fb_widgets/fb_assets.dart';
import 'package:fb_clone_main/fb_widgets/fb_avatars.dart';
import 'package:flutter/material.dart';

class Statussection extends StatelessWidget {
  const Statussection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayimage: sneha,
        displaystatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "what's on your mind?",
          hintStyle: TextStyle(color: Colors.black54),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
