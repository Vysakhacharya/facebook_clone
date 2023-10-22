import 'package:fb_clone_main/fb_sections/button_sections.dart';
import 'package:fb_clone_main/fb_sections/room_sections.dart';
import 'package:fb_clone_main/fb_sections/status_sections.dart';
import 'package:fb_clone_main/fb_sections/story_sections.dart';
import 'package:fb_clone_main/fb_widgets/fb_assets.dart';
import 'package:fb_clone_main/fb_widgets/fb_circular_buttons.dart';
import 'package:fb_clone_main/fb_widgets/fb_post_cards.dart';
import 'package:flutter/material.dart';

class HOME extends StatelessWidget {
  Widget ThinDivider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );
  Widget ThickDivider = Divider(
    thickness: 7,
    color: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.add,
                buttonAction: () {
                  print('add action Activated');
                }),
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print('serch action key Activated');
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print('chat key Activated');
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            Statussection(),
            ThinDivider,
            heaerbuttonsecton(),
            ThickDivider,
            RoomSection(),
            ThickDivider,
            StorySection(),
            PostCard(
              name: "Vijay",
              avatar: Vijay,
              publisheAdt: '5h',
              postTitle: "New movie LEO",
              postImage: leo,
              showBlueTick: true,
              likeCount: '100k',
              Sharecount: '100k',
              CommentCount: '100k',
            ),
            PostCard(
              name: "Samantha",
              avatar: Samantha,
              publisheAdt: '4h',
              postTitle: "my new ",
              postImage: Samanthanew,
              showBlueTick: true,
              likeCount: '10k',
              Sharecount: '10k',
              CommentCount: '10k',
            ),
            PostCard(
              name: "sneha",
              avatar: sneha,
              publisheAdt: '3h',
              postTitle: "my new ",
              postImage: snehanew,
              showBlueTick: true,
              likeCount: '10k',
              Sharecount: '10k',
              CommentCount: '10k',
            ),
            PostCard(
              name: "Tamannaah",
              avatar: Tamannaah,
              publisheAdt: '4h',
              postTitle: "my new ",
              postImage: Tamannaanew,
              showBlueTick: true,
              likeCount: '10k',
              Sharecount: '10k',
              CommentCount: '10k',
            ),
            PostCard(
              name: "Mohanlal",
              avatar: Mohanlal,
              publisheAdt: '4h',
              postTitle: "JAILER ",
              postImage: Mohanlalnew,
              showBlueTick: true,
              likeCount: '20k',
              Sharecount: '5k',
              CommentCount: '10k',
            ),
            PostCard(
              name: "dq",
              avatar: dq,
              publisheAdt: '4h',
              postTitle: "Cooooooool ",
              postImage: dqnew,
              showBlueTick: true,
              likeCount: '10k',
              Sharecount: '10k',
              CommentCount: '10k',
            ),
          ],
        ),
      ),
    );
  }
}
