import 'package:fb_clone_main/fb_sections/button_sections.dart';
import 'package:fb_clone_main/fb_widgets/fb_avatars.dart';
import 'package:fb_clone_main/fb_widgets/fb_blue_tick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publisheAdt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String Sharecount;
  final String CommentCount;

  PostCard({
    required this.avatar,
    required this.name,
    required this.publisheAdt,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.Sharecount,
    required this.CommentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          heaerbuttonsecton(),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    size: 10,
                    Icons.thumb_up,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                displaytext(lebel: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displaytext(lebel: CommentCount),
                SizedBox(
                  width: 5,
                ),
                displaytext(lebel: "comments"),
                SizedBox(
                  width: 10,
                ),
                displaytext(lebel: Sharecount),
                SizedBox(
                  width: 5,
                ),
                displaytext(lebel: 'Shares'),
                SizedBox(
                  width: 10,
                ),
                Avatar(
                  displayimage: avatar,
                  displaystatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {
                    print("Dropdown pressed");
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displaytext({required String lebel}) {
    return (Text(
      lebel == null ? "" : lebel,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    ));
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return Container(
      padding: EdgeInsets.only(
        bottom: 5,
      ),
      child: Text(
        postTitle == null ? "" : postTitle,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayimage: avatar, displaystatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(width: 10),
          showBlueTick ? BlueTick() : SizedBox(),
          // BlueTick(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publisheAdt == null ? "" : publisheAdt),
          SizedBox(width: 10),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          ("open more menu");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
