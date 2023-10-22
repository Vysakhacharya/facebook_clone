import 'package:fb_clone_main/fb_widgets/fb_assets.dart';
import 'package:fb_clone_main/fb_widgets/fb_story_cards.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          StoryCard(
            labelText: "add To Story",
            story: sneha,
            avatar: sneha,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Vijay",
            story: leo,
            avatar: Vijay,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Mohanlal",
            story: Mohanlalnew,
            avatar: Mohanlal,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Samantha",
            story: Samanthanew,
            avatar: Samantha,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "DQ",
            story: dqnew,
            avatar: dq,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Tamannaanew",
            story: Tamannaanew,
            avatar: Tamannaah,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "dhanush",
            story: dhanushnew,
            avatar: dhanush,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
