import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'components/body.dart';

class ChatMainScreen extends StatelessWidget {

  final appbar= {"bar1":"CHATS", "bar2":"STATUS", "bar3":"CALLS"};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: buildAppBar(),
      floatingActionButton: Ink(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.orange, width: 1.0),
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.white10,
          child: Icon(Icons.message, color: Colors.white,),
          onPressed: (){},
        ),
      ),
      body: Body(),
    );
  }





  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      automaticallyImplyLeading: false,
      elevation: 2,
      shadowColor: Colors.orange,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(Icons.search_rounded, color: Colors.white.withOpacity(0.5),),
        ),
        // Icon(Icons.)
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(40.h),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${appbar["bar1"]}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.sp),),
              Text("${appbar["bar2"]}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.sp)),
              Text("${appbar["bar3"]}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.sp)),
            ],
          ),
        ),
      ),
      title: Text("ChatApp", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.sp)),
    );
  }


}
