import 'package:flutter/material.dart';
import 'components/body.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../constants.dart';

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
      backgroundColor: Colors.black,
      appBar: buildAppBar(),
      body: Body(widget.chatData),
    );
  }









  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      elevation: 2,
      shadowColor: Colors.orange,
      title: Row(
        children: [
          Ink(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.orange, width: 1.0),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 20.sp,
              backgroundImage: AssetImage("${widget.chatData["image"]}"),
            ),
          ),
          SizedBox(width: 5.w,),
          Column(
            children: [
              Text("${widget.chatData["name"]}", style: TextStyle(color: TextColor, fontSize: 18.sp, fontWeight: FontWeight.bold),),
              widget.chatData["isActive"] == true ?
              Text("online", style: TextStyle(color: TextColor, fontSize: 12.sp),): Text("${widget.chatData["time"]}", style: TextStyle(color: TextColor, fontSize: 12.sp),),
            ],
          ),
        ],
      ),
      actions: [
        Icon(Icons.videocam, color: TextColor,),
        SizedBox(width: 20.w,),
        Icon(Icons.call, color: TextColor,),
        SizedBox(width: 20.w,),
      ],
    );
  }
}
