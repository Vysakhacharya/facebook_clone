import 'package:fb_clone_main/fb_widgets/fb_assets.dart';
import 'package:fb_clone_main/fb_widgets/fb_avatars.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          creatRoomButton(),
          Avatar(
            displayimage: sneha,
            displaystatus: false,
          ),
          Avatar(
            displayimage: dq,
            displaystatus: true,
          ),
          Avatar(
            displayimage: Vijay,
            displaystatus: true,
          ),
          Avatar(
            displayimage: Samantha,
            displaystatus: true,
          ),
          Avatar(
            displayimage: Mohanlal,
            displaystatus: true,
          ),
          Avatar(
            displayimage: dhanush,
            displaystatus: true,
          ),
          Avatar(
            displayimage: Tamannaah,
            displaystatus: true,
          ),
          Avatar(
            displayimage: priyankamohan,
            displaystatus: true,
          ),
          Avatar(
            displayimage: dq,
            displaystatus: true,
          ),
          Avatar(
            displayimage: Vijay,
            displaystatus: true,
          ),
        ],
      ),
    );
  }

  Widget creatRoomButton() {
    return Container(
      padding: EdgeInsets.only(
        right: 5,
        left: 5,
      ),
      child: OutlinedButton.icon(
        onPressed: () {
          print('create a chat Room');
        },
        style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(),
          side: const BorderSide(width: 1.5, color: Colors.blue),
        ),
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          'Create \nRoom',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
