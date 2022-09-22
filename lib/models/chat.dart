class Chat {
  late final String name, lastMessage, image, time;
  late final bool isActive;

  Chat(
      {
       this.name=" ",
       this.lastMessage=" ",
       this.image=" ",
       this.time=" ",
       this.isActive=false,
      });

  List<Chat> chatData = [
    Chat(
        name: "Huraira Zahid",
        lastMessage: "Hope you are fine",
        image: "assets/images/huraira.jpeg",
        time: "3m ago",
        isActive: true
    ),Chat(
        name: "Aqib Ali",
        lastMessage: "What's up bro",
        image: "assets/images/pic1.jpg",
        time: "19m ago",
        isActive: false
    ),Chat(
        name: "Ahmad Raza",
        lastMessage: "Asslam-o-Alaikum Asad",
        image: "assets/images/pic2.jpg",
        time: "23m ago",
        isActive: true
    ),Chat(
        name: "Zaid Shms",
        lastMessage: "Are you here?",
        image: "assets/images/pic3.jpg",
        time: "30m ago",
        isActive: true
    ),Chat(
        name: "Zain Shabbir",
        lastMessage: "Have you done your work?",
        image: "assets/images/pic4.jpg",
        time: "1m ago",
        isActive: false
    ),Chat(
        name: "Ahsan Khalid",
        lastMessage: "I won the match",
        image: "assets/images/pic5.jpg",
        time: "55m ago",
        isActive: true
    ),
  ];
}

// void main(){
//   print("hy this is my void func");
//   Chat chat= Chat();
//   for(var item in chat.chatData){
//     print("huraira my data is here :   ${item.name}");
//   }
//
// }
