import 'package:flutter/material.dart';
import 'package:household/chat/chat_message.dart';
import 'package:household/chat/message_page.dart';

class ChatBubble extends StatefulWidget{
  ChatMessage chatMessage;
  ChatBubble({required this.chatMessage});
  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16,right: 16,top:10,bottom: 10),
        child: Align(
        alignment:(widget.chatMessage.type==MessageType.Receiver?Alignment.topLeft:Alignment.topRight),
           child: Flexible(
                child: Container(
                      decoration: BoxDecoration(
                        borderRadius: (widget.chatMessage.type==MessageType.Receiver?BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30)):
                        BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30)
                        )),
                        border: (widget.chatMessage.type==MessageType.Receiver?Border.all(color: Colors.lightBlue):Border.all(color: Colors.lightGreen)),
                        color: (widget.chatMessage.type==MessageType.Receiver?Color.fromARGB(255, 221, 245, 255):Color.fromARGB(255, 218, 255, 176)),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Container(
                        width: 250,
                          child: Column(
                            children: [
                              Text(widget.chatMessage.message),
                                 Padding(
                                   padding: (widget.chatMessage.type==MessageType.Receiver?EdgeInsets.only(left: 164,):EdgeInsets.only(right: 150)),
                                   child: Row(
                                    children: [
                                      Text("12:00 PM",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                                      SizedBox(width: 3,),
                                      Icon(widget.chatMessage.type==MessageType.Receiver?Icons.done:Icons.done_all,color: Colors.blue,)
                                    ],
                                ),
                                 ),
                            ],
                          )),
                    ),
              ),
            ),
        );
  }
}