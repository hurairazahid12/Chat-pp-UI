import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/constants.dart';
import 'package:flutter_firebase/screens/chatapp/mainscreen/chatting/chatting_screen_main.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}
class _BodyState extends State<Body> {
  List chatData = [
    {"name": "Huraira Zahid", "lastMessage": "Hope you are fine", "image": "assets/images/huraira.jpeg", "time": "3m ago", "isActive": true, "Messages":[
      {"text": "Hi,", "date": "Toady", "isSendByMe": "false"},
      {"text":"How are you?,", "date":"Toady","isSendByMe":"false" },
      {"text":"I'm fine what about you?,", "date":"Toady","isSendByMe":"true" },
      {"text":"I'm also fine,,", "date":"Toady","isSendByMe":"false" },
      {"text":"Tell me When you are goin to uni?,", "date":"Toady","isSendByMe":"false" },
      {"text":"From coming week!,", "date":"Toady","isSendByMe":"true" },
      {"text":"ok, good!,", "date":"Toady","isSendByMe":"false" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"true" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"false" },
      {"text":"Where are you,", "date":"Toady","isSendByMe":"true" },
      {"text":"In class and I will text you later,", "date":"Toady","isSendByMe":"false" },
      {"text":"ok,", "date":"Toady","isSendByMe":"false" }
      ]},
    {"name": "Talal Saroya", "lastMessage": "What's up bro", "image": "assets/images/pic9.jpg", "time": "19m ago", "isActive": false, "Messages":[
      {"text": "Hi,", "date": "Toady", "isSendByMe": "false"},
      {"text":"How are you?,", "date":"Toady","isSendByMe":"false" },
      {"text":"I'm fine what about you?,", "date":"Toady","isSendByMe":"true" },
      {"text":"I'm also fine,,", "date":"Toady","isSendByMe":"false" },
      {"text":"Tell me When you are goin to uni?,", "date":"Toady","isSendByMe":"false" },
      {"text":"From coming week!,", "date":"Toady","isSendByMe":"true" },
      {"text":"ok, good!,", "date":"Toady","isSendByMe":"false" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"true" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"false" },
      {"text":"Where are you,", "date":"Toady","isSendByMe":"true" },
      {"text":"In class and I will text you later,", "date":"Toady","isSendByMe":"false" },
      {"text":"ok,", "date":"Toady","isSendByMe":"false" }
    ]},
    {"name": "Abd ul haq", "lastMessage": "Asslam-o-Alaikum Huraira", "image": "assets/images/pic2.jpg", "time": "1 week ago", "isActive": true, "Messages":[
      {"text": "Hi,", "date": "Toady", "isSendByMe": "false"},
      {"text":"How are you?,", "date":"Toady","isSendByMe":"false" },
      {"text":"I'm fine what about you?,", "date":"Toady","isSendByMe":"true" },
      {"text":"I'm also fine,,", "date":"Toady","isSendByMe":"false" },
      {"text":"Tell me When you are goin to uni?,", "date":"Toady","isSendByMe":"false" },
      {"text":"From coming week!,", "date":"Toady","isSendByMe":"true" },
      {"text":"ok, good!,", "date":"Toady","isSendByMe":"false" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"true" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"false" },
      {"text":"Where are you,", "date":"Toady","isSendByMe":"true" },
      {"text":"In class and I will text you later,", "date":"Toady","isSendByMe":"false" },
      {"text":"ok,", "date":"Toady","isSendByMe":"false" }
    ]},
    {"name": "Abd ul hadi", "lastMessage": "Are you here?", "image": "assets/images/pic6.jpg", "time": "30m ago", "isActive": true, "Messages":[
      {"text": "Hi,", "date": "Toady", "isSendByMe": "false"},
      {"text":"How are you?,", "date":"Toady","isSendByMe":"false" },
      {"text":"I'm fine what about you?,", "date":"Toady","isSendByMe":"true" },
      {"text":"I'm also fine,,", "date":"Toady","isSendByMe":"false" },
      {"text":"Tell me When you are goin to uni?,", "date":"Toady","isSendByMe":"false" },
      {"text":"From coming week!,", "date":"Toady","isSendByMe":"true" },
      {"text":"ok, good!,", "date":"Toady","isSendByMe":"false" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"true" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"false" },
      {"text":"Where are you,", "date":"Toady","isSendByMe":"true" },
      {"text":"In class and I will text you later,", "date":"Toady","isSendByMe":"false" },
      {"text":"ok,", "date":"Toady","isSendByMe":"false" }
    ]},
    {"name": "Abdullah Zahid", "lastMessage": "Have you done your work?", "image": "assets/images/pic4.jpg", "time": "1m ago", "isActive": false, "Messages":[
      {"text": "Hi,", "date": "Toady", "isSendByMe": "false"},
      {"text":"How are you?,", "date":"Toady","isSendByMe":"false" },
      {"text":"I'm fine what about you?,", "date":"Toady","isSendByMe":"true" },
      {"text":"I'm also fine,,", "date":"Toady","isSendByMe":"false" },
      {"text":"Tell me When you are goin to uni?,", "date":"Toady","isSendByMe":"false" },
      {"text":"From coming week!,", "date":"Toady","isSendByMe":"true" },
      {"text":"ok, good!,", "date":"Toady","isSendByMe":"false" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"true" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"false" },
      {"text":"Where are you,", "date":"Toady","isSendByMe":"true" },
      {"text":"In class and I will text you later,", "date":"Toady","isSendByMe":"false" },
      {"text":"ok,", "date":"Toady","isSendByMe":"false" }
    ]},
    {"name": "Ahmad Raza", "lastMessage": "I won the match", "image": "assets/images/pic5.jpg", "time": "55m ago", "isActive": true, "Messages":[
      {"text": "Hi,", "date": "Toady", "isSendByMe": "false"},
      {"text":"How are you?,", "date":"Toady","isSendByMe":"false" },
      {"text":"I'm fine what about you?,", "date":"Toady","isSendByMe":"true" },
      {"text":"I'm also fine,,", "date":"Toady","isSendByMe":"false" },
      {"text":"Tell me When you are goin to uni?,", "date":"Toady","isSendByMe":"false" },
      {"text":"From coming week!,", "date":"Toady","isSendByMe":"true" },
      {"text":"ok, good!,", "date":"Toady","isSendByMe":"false" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"true" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"false" },
      {"text":"Where are you,", "date":"Toady","isSendByMe":"true" },
      {"text":"In class and I will text you later,", "date":"Toady","isSendByMe":"false" },
      {"text":"ok,", "date":"Toady","isSendByMe":"false" }
    ]},
    {"name": "Husnain", "lastMessage": "I'm doing my job well!", "image": "assets/images/pic7.jpg", "time": "59m ago", "isActive": false, "Messages":[
      {"text": "Hi,", "date": "Toady", "isSendByMe": "false"},
      {"text":"How are you?,", "date":"Toady","isSendByMe":"false" },
      {"text":"I'm fine what about you?,", "date":"Toady","isSendByMe":"true" },
      {"text":"I'm also fine,,", "date":"Toady","isSendByMe":"false" },
      {"text":"Tell me When you are goin to uni?,", "date":"Toady","isSendByMe":"false" },
      {"text":"From coming week!,", "date":"Toady","isSendByMe":"true" },
      {"text":"ok, good!,", "date":"Toady","isSendByMe":"false" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"true" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"false" },
      {"text":"Where are you,", "date":"Toady","isSendByMe":"true" },
      {"text":"In class and I will text you later,", "date":"Toady","isSendByMe":"false" },
      {"text":"ok,", "date":"Toady","isSendByMe":"false" }
    ]},
    {"name": "Hassan", "lastMessage": "Are you here?", "image": "assets/images/pic16.jpg", "time": "2 days ago", "isActive": true, "Messages":[
      {"text": "Hi,", "date": "Toady", "isSendByMe": "false"},
      {"text":"How are you?,", "date":"Toady","isSendByMe":"false" },
      {"text":"I'm fine what about you?,", "date":"Toady","isSendByMe":"true" },
      {"text":"I'm also fine,,", "date":"Toady","isSendByMe":"false" },
      {"text":"Tell me When you are goin to uni?,", "date":"Toady","isSendByMe":"false" },
      {"text":"From coming week!,", "date":"Toady","isSendByMe":"true" },
      {"text":"ok, good!,", "date":"Toady","isSendByMe":"false" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"true" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"false" },
      {"text":"Where are you,", "date":"Toady","isSendByMe":"true" },
      {"text":"In class and I will text you later,", "date":"Toady","isSendByMe":"false" },
      {"text":"ok,", "date":"Toady","isSendByMe":"false" }
    ]},
    {"name": "Zain Shabbir", "lastMessage": "Have you done your work?", "image": "assets/images/pic8.jpg", "time": "1m ago", "isActive": false, "Messages":[
      {"text": "Hi,", "date": "Toady", "isSendByMe": "false"},
      {"text":"How are you?,", "date":"Toady","isSendByMe":"false" },
      {"text":"I'm fine what about you?,", "date":"Toady","isSendByMe":"true" },
      {"text":"I'm also fine,,", "date":"Toady","isSendByMe":"false" },
      {"text":"Tell me When you are goin to uni?,", "date":"Toady","isSendByMe":"false" },
      {"text":"From coming week!,", "date":"Toady","isSendByMe":"true" },
      {"text":"ok, good!,", "date":"Toady","isSendByMe":"false" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"true" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"false" },
      {"text":"Where are you,", "date":"Toady","isSendByMe":"true" },
      {"text":"In class and I will text you later,", "date":"Toady","isSendByMe":"false" },
      {"text":"ok,", "date":"Toady","isSendByMe":"false" }
    ]},
    {"name": "Ahsan Khalid", "lastMessage": "I won the match", "image": "assets/images/pic1.jpg", "time": "yesterday", "isActive": true, "Messages":[
      {"text": "Hi,", "date": "Toady", "isSendByMe": "false"},
      {"text":"How are you?,", "date":"Toady","isSendByMe":"false" },
      {"text":"I'm fine what about you?,", "date":"Toady","isSendByMe":"true" },
      {"text":"I'm also fine,,", "date":"Toady","isSendByMe":"false" },
      {"text":"Tell me When you are goin to uni?,", "date":"Toady","isSendByMe":"false" },
      {"text":"From coming week!,", "date":"Toady","isSendByMe":"true" },
      {"text":"ok, good!,", "date":"Toady","isSendByMe":"false" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"true" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"false" },
      {"text":"Where are you,", "date":"Toady","isSendByMe":"true" },
      {"text":"In class and I will text you later,", "date":"Toady","isSendByMe":"false" },
      {"text":"ok,", "date":"Toady","isSendByMe":"false" }
    ]},
    {"name": "Hamid", "lastMessage": "Whatever, Everything will be fine", "image": "assets/images/pic10.jpg", "time": "23m ago", "isActive": true, "Messages":[
      {"text": "Hi,", "date": "Toady", "isSendByMe": "false"},
      {"text":"How are you?,", "date":"Toady","isSendByMe":"false" },
      {"text":"I'm fine what about you?,", "date":"Toady","isSendByMe":"true" },
      {"text":"I'm also fine,,", "date":"Toady","isSendByMe":"false" },
      {"text":"Tell me When you are goin to uni?,", "date":"Toady","isSendByMe":"false" },
      {"text":"From coming week!,", "date":"Toady","isSendByMe":"true" },
      {"text":"ok, good!,", "date":"Toady","isSendByMe":"false" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"true" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"false" },
      {"text":"Where are you,", "date":"Toady","isSendByMe":"true" },
      {"text":"In class and I will text you later,", "date":"Toady","isSendByMe":"false" },
      {"text":"ok,", "date":"Toady","isSendByMe":"false" }
    ]},
    {"name": "Sultan", "lastMessage": "Are you here?", "image": "assets/images/pic15.jpg", "time": "1/9/2022", "isActive": true, "Messages":[
      {"text": "Hi,", "date": "Toady", "isSendByMe": "false"},
      {"text":"How are you?,", "date":"Toady","isSendByMe":"false" },
      {"text":"I'm fine what about you?,", "date":"Toady","isSendByMe":"true" },
      {"text":"I'm also fine,,", "date":"Toady","isSendByMe":"false" },
      {"text":"Tell me When you are goin to uni?,", "date":"Toady","isSendByMe":"false" },
      {"text":"From coming week!,", "date":"Toady","isSendByMe":"true" },
      {"text":"ok, good!,", "date":"Toady","isSendByMe":"false" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"true" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"false" },
      {"text":"Where are you,", "date":"Toady","isSendByMe":"true" },
      {"text":"In class and I will text you later,", "date":"Toady","isSendByMe":"false" },
      {"text":"ok,", "date":"Toady","isSendByMe":"false" }
    ]},
    {"name": "Yousaf", "lastMessage": "Have you done your work?", "image": "assets/images/pic12.jpg", "time": "1m ago", "isActive": false, "Messages":[
      {"text": "Hi,", "date": "Toady", "isSendByMe": "false"},
      {"text":"How are you?,", "date":"Toady","isSendByMe":"false" },
      {"text":"I'm fine what about you?,", "date":"Toady","isSendByMe":"true" },
      {"text":"I'm also fine,,", "date":"Toady","isSendByMe":"false" },
      {"text":"Tell me When you are goin to uni?,", "date":"Toady","isSendByMe":"false" },
      {"text":"From coming week!,", "date":"Toady","isSendByMe":"true" },
      {"text":"ok, good!,", "date":"Toady","isSendByMe":"false" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"true" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"false" },
      {"text":"Where are you,", "date":"Toady","isSendByMe":"true" },
      {"text":"In class and I will text you later,", "date":"Toady","isSendByMe":"false" },
      {"text":"ok,", "date":"Toady","isSendByMe":"false" }
    ]},
    {"name": "Zohaib", "lastMessage": "I won the match", "image": "assets/images/pic13.jpg", "time": "28/8/2022", "isActive": true, "Messages":[
      {"text": "Hi,", "date": "Toady", "isSendByMe": "false"},
      {"text":"How are you?,", "date":"Toady","isSendByMe":"false" },
      {"text":"I'm fine what about you?,", "date":"Toady","isSendByMe":"true" },
      {"text":"I'm also fine,,", "date":"Toady","isSendByMe":"false" },
      {"text":"Tell me When you are goin to uni?,", "date":"Toady","isSendByMe":"false" },
      {"text":"From coming week!,", "date":"Toady","isSendByMe":"true" },
      {"text":"ok, good!,", "date":"Toady","isSendByMe":"false" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"true" },
      {"text":"Hi,", "date":"Toady","isSendByMe":"false" },
      {"text":"Where are you,", "date":"Toady","isSendByMe":"true" },
      {"text":"In class and I will text you later,", "date":"Toady","isSendByMe":"false" },
      {"text":"ok,", "date":"Toady","isSendByMe":"false" }
    ]},
  ];
// Chat chat= Chat();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatData.length,
        itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context) =>ChattingMainScreen(chatData[index])));
          },
          child: Card(
            color: Colors.white.withOpacity(0.0),
            margin: EdgeInsets.all(10.sp),
            elevation: 0.sp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment(-0.75, -0.99),
                children: [
                  Ink(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 1.0),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 23.sp,
                      backgroundImage: AssetImage(chatData[index]["image"]),
                    ),
                  ),
                  chatData[index]["isActive"] ==true ?
                  CircleAvatar(
                    radius: 4.sp,
                    backgroundColor: Colors.orange,
                  ) : Container(),
                ],
              ),
              // Text("${chatData[index]["name"]}"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${chatData[index]["name"]}",style: TextStyle(color: TextColor2, fontWeight: FontWeight.bold, fontSize: 14.sp),),
                    Text("${chatData[index]["lastMessage"]}", style: TextStyle(color: TextColor2.withOpacity(0.4),fontSize: 12.sp),),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                ),
              ),
              Text("${chatData[index]["time"]}", style: TextStyle(color: TextColor2.withOpacity(0.4),fontSize: 12.sp)),
      ],
    ),
          ),
        );
        }

      );
    }
}


