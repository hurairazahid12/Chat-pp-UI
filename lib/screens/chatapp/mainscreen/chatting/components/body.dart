import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import '../../../../../constants.dart';
class Body extends StatefulWidget {
  var chatData;
  Body(this.chatData);
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {

    List ChatMessages = [
    {
        "text": "Hi,",
        "isSender": true,
    },
  {
        "text": "Hi, How are you?",
        "isSender": false,
  },
  {
        "text": "I'm fine",
        "isSender": true,
    },
  {
        "text": "What about you",
        "isSender": false,
  },
  {
        "text": "This looks great man!!",
        "isSender": true,
  },
  {
  "text": "Glad you like it",
  "isSender": false,
  },
      {
        "text": "We are going to plan visit to Naran Kang! What about you?",
        "isSender": true,
      },
      {
        "text": "That's amazing plan! I would like to join you! When are you going? ",
        "isSender": false,
      },
      {
        "text": "I will send you complete details like departure location and time. ",
        "isSender": true,
      },
      {
        "text": "Alright ",
        "isSender": false,
      },
      {
        "text": "So, be ready for the new adventure! ",
        "isSender": true,
      },
      {
        "text": "I'm always ready because I'm very excited for the tour!",
        "isSender": false,
      },
    ];


    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: ChatMessages.length,
            itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: ChatMessages[index]["isSender"] ? MainAxisAlignment.start : MainAxisAlignment.end,
                children: [
                  Stack(
                    alignment: Alignment(0.9,-2.9),
                    children: [
                      if(!ChatMessages[index]["isSender"]) CircleAvatar(
                        radius: 10.sp,
                        backgroundImage: AssetImage(widget.chatData["image"]),
                      ),
                      Bubble(
                        color: ChatMessages[index]["isSender"] ? Colors.black.withOpacity(0.9) : Colors.orange.withOpacity(0.9),
                        radius: Radius.circular(15),
                        elevation: 5,
                        borderWidth: 0.1,
                        borderColor:ChatMessages[index]["isSender"] ? Colors.orange: Colors.white,
                        margin: BubbleEdges.only(top: 10,),
                        nipHeight: 7,
                        nipWidth: 15,
                        shadowColor: ChatMessages[index]["isSender"] ?Colors.orange.withOpacity(0.5): Colors.white.withOpacity(0.5),
                        nip: ChatMessages[index]["isSender"] ? BubbleNip.leftTop : BubbleNip.rightTop,
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: 250.w
                          ),
                            child: Text('${ChatMessages[index]["text"]}',maxLines: 10,style: TextStyle(color: WhiteColor,),textWidthBasis: TextWidthBasis.parent, textAlign: ChatMessages[index]["isSender"] ? TextAlign.left : TextAlign.right)),
                      ),
                    ],
                  ),
                ],
              ),
            );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 35.h,
                      decoration: BoxDecoration(color: Colors.white10.withOpacity(0.059),
                        borderRadius: BorderRadius.circular(45),

                      ),
                      child: TextField(
                        style: TextStyle(color: TextColor2),
                        showCursor: true,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Wrap(
                              direction: Axis.vertical,
                              alignment: WrapAlignment.center,
                              // crossAxisAlignment: WrapCrossAlignment.center,
                              runSpacing: 12.0,
                              children: [
                                Icon(Icons.attach_file_outlined, color: WhiteColor,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 7.0),
                                  child: Icon(Icons.mic, color: WhiteColor,),
                                ),
                                // SizedBox(width: 20.w,),
                              ],
                            ),
                          ),
                            prefixIcon: Icon(Icons.emoji_emotions, color: WhiteColor,),
                            hintText: "Message",
                            hintStyle: TextStyle(color: TextColor2.withOpacity(0.5)),
                            contentPadding: EdgeInsets.all(8.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.sp),
                              borderSide:BorderSide(color: Colors.black12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.sp),
                              borderSide:BorderSide(color: Colors.black12),
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 3.w,),
                  CircleAvatar(
                    radius: 22.sp,
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.send, color: Colors.white,),
                  )
                ],
              ),
              Container(
                height: 3.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange,
                      blurRadius: 30,
                      spreadRadius: 0.0,
                      offset: Offset(0, -13), // Shadow position
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.h,),
      ],
    );
  }
}
