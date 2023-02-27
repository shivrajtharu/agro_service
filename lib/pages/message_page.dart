import 'package:flutter/material.dart';
import 'package:household/pages/chat_bubble.dart';
import 'package:household/pages/chat_message.dart';
import 'package:household/pages/delete_page.dart';
import 'Report_page.dart';
import 'block_page.dart';
import 'contact.dart';

enum MessageType{
  Sender,
  Receiver,
}

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List<ChatMessage> chatmessage=[
    ChatMessage(message: "Hi Bro! Whats up?", type: MessageType.Receiver),
    ChatMessage(message: 'Hope you are doing good', type: MessageType.Receiver),
    ChatMessage(message: "Hello Bro, I'm good what about you", type: MessageType.Sender),
    ChatMessage(message: "I'm fine, Working from home", type: MessageType.Receiver),
    ChatMessage(message: "Oh! Nice, Same here man", type: MessageType.Sender),
    ChatMessage(message: "What's your plan for coming Saturday", type: MessageType.Sender),
    ChatMessage(message: "Me and my friends were planning to go Pokhara", type: MessageType.Receiver),
    ChatMessage(message: "Oh! really, Can I also join the trip ", type: MessageType.Sender),
    ChatMessage(message: "Sure! Why not?", type: MessageType.Receiver),
    ChatMessage(message: "Sounds Good", type: MessageType.Sender),

  ];

  void showModal(){
    showModalBottomSheet(
        context: context,
        builder:(context){
          return Container(
            height: MediaQuery.of(context).size.height/2,
            color: Color(0xff737373),
            child:Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
              ),
              child: Column(
                children:<Widget>[
                  SizedBox(height:5,),
                  Center(
                    child: Container(
                      height: 4,
                      width: 50,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  SizedBox(height: 5,),
                  InkWell(
                    onTap:  () {

                    },
                    child: ListTile(
                      leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Icon(Icons.image,color: Colors.amber,)),
                      title: Text("Photos & Videos",style: TextStyle(fontSize: 17),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap:  () {

                    },
                    child: ListTile(
                      leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Icon(Icons.insert_drive_file,color: Colors.blue,)),
                      title: Text("Document",style: TextStyle(fontSize: 17),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap:  () {

                    },
                    child: ListTile(
                      leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Icon(Icons.music_note,color: Colors.orange,)),
                      title: Text("Audio",style: TextStyle(fontSize: 17),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap:  () {

                    },
                    child: ListTile(
                      leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Icon(Icons.location_on,color: Colors.green,)),
                      title: Text("Location",style: TextStyle(fontSize: 17),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap:  () {

                    },
                    child: ListTile(
                      leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Icon(Icons.person,color: Colors.purple,)),
                      title: Text("Contact",style: TextStyle(fontSize: 17),),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
        backgroundColor: Color.fromARGB(255, 234, 248, 255),
    appBar: AppBar(
    backgroundColor: Colors.white,
    elevation: 0.2,
    automaticallyImplyLeading: false,
    flexibleSpace:SafeArea(
    child: Container(
    padding: EdgeInsets.only(right: 16,top:5),
    child: Row(
    children:<Widget>[
    IconButton(
    onPressed:(){
    Navigator.pop(context);
    },
    icon: Icon(Icons.arrow_back,color: Colors.black,),
    ),
    SizedBox(width:2,),
    Padding(
    padding: const EdgeInsets.only(bottom: 4),
    child: CircleAvatar(
    radius: 24,
    child: Text('ST'),
    ),
    ),
    SizedBox(width: 12,),
    Expanded(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[
        Text('Shivraj Tharu',style: TextStyle(fontWeight: FontWeight.w700),),
        SizedBox(height: 6,),
        Text("Online",style: TextStyle(color: Colors.green,fontSize: 12),),
      ],
    ),
    ),
      PopupMenuButton<int>(
        color: Color.fromARGB(255, 234, 248, 255),
        onSelected: (item) => onSelected(context, item),
        itemBuilder: (context) =>
        [
          PopupMenuItem<int>(
            value: 0,
            child: Row(
              children: [
                Icon(Icons.call, color: Colors.green,shadows: [BoxShadow(
                    color: Colors.greenAccent,
                    offset: Offset(5.0,5.0),
                    blurRadius: 10.0,
                    spreadRadius: 2.0
                )],),
                SizedBox(width: 15,),
                Text('Call'),
              ],
            ),
          ),
          PopupMenuItem<int>(
            value: 1,
            child: Row(
              children: [
                Icon(Icons.report, color: Colors.indigo,shadows: [BoxShadow(
                    color: Colors.indigoAccent,
                    offset: Offset(5.0,5.0),
                    blurRadius: 10.0,
                    spreadRadius: 2.0
                )]),
                SizedBox(width: 15,),
                Text('report'),
              ],
            ),
          ),
          PopupMenuItem<int>(
            value: 2,
            child: Row(
              children: [
                Icon(Icons.block, color: Colors.red,shadows: [BoxShadow(
                    color: Colors.redAccent,
                    offset: Offset(5.0,5.0),
                    blurRadius: 10.0,
                    spreadRadius: 2.0
                )]
                ),
                SizedBox(width: 15,),
                Text('Block'),
              ],
            ),
          ),
          PopupMenuItem<int>(
            value: 3,
            child: Row(
              children: [
                Icon(Icons.delete, color: Colors.black,shadows: [BoxShadow(
                    color: Colors.black54,
                    offset: Offset(5.0,5.0),
                    blurRadius: 10.0,
                    spreadRadius: 2.0
                )]
                ),
                SizedBox(width: 15,),
                Text('Delete Chat'),
              ],
            ),
          )
        ],
      ),
    ],
    ),
    ),
    ),
    ),
          body: Stack(
            children:<Widget>[
              ListView.builder(
                itemCount: chatmessage.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 10,bottom: 10),
                physics: BouncingScrollPhysics(),
                itemBuilder: (context,index){
                  return ChatBubble(
                    chatMessage: chatmessage[index],
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: EdgeInsets.only(right:58,),
                  padding: EdgeInsets.only(left:16,bottom: 10),
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    children:<Widget>[
                      GestureDetector(
                        onTap: () {
                          showModal();
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade400,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.add,color: Colors.white,size: 21,),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8,top: 5,),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(color: Colors.grey.shade200)
                            ),
                            margin: EdgeInsets.only(left: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: TextField(
                                autofocus: true,
                                decoration: InputDecoration(
                                    hintText: "Type message...",
                                    hintStyle: TextStyle(color: Colors.grey.shade500),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    color: Colors.white,
                    height: 70,
                    width: 65,
                    padding: EdgeInsets.only(bottom:15,top: 5),
                    child: FloatingActionButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => MessagePage()));
                      },
                      child: Icon(Icons.send,color: Colors.white,size: 27,),
                      backgroundColor: Colors.green,
                      elevation: 0,
                    ),
                  )
              )
            ],
          ),
        ),
    );
  }
  onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ContactPage()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ReportPage()),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => BlockPage()),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => DeletePage()),
        );
    }
  }
}