import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayimage;
  final bool displaystatus;
  final bool displayborder;
  final double width;
  final double height;

  Avatar({
    required this.displayimage,
    required this.displaystatus,
    this.displayborder = false,
    this.width = 60,
    this.height = 60,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayborder
                ? Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  )
                : Border(),
          ),
          padding: EdgeInsets.only(
            right: 4,
            left: 4,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(500),
            child: Image.asset(
              displayimage,
              width: width,
              height: height,
            ),
          ),
        ),
        displaystatus == true
            ? Positioned(
                bottom: 0,
                right: 1.0,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              )
            : SizedBox()
      ],
    );
  }
}
