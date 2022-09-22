import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:iconsax/iconsax.dart';
class ChattingMainScreen extends StatefulWidget {
  var chatData;

  ChattingMainScreen(this.chatData);
  @override
  State<ChattingMainScreen> createState() => _ChattingMainScreenState();
}

class _ChattingMainScreenState extends State<ChattingMainScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text("Huraira"),
            Ink(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange, width: 1.0),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 23.sp,
                backgroundImage: AssetImage("assets/images/pic4.jpg"),
              ),
            ),
          ],
        ),
        actions: [
          Icon(Icons.videocam),
          SizedBox(width: 20.w,),
          Icon(Icons.call),
          SizedBox(width: 20.w,),
        ],
      ),
    );
  }
}
