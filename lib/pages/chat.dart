import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/all.jpg'),fit:BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.indigo,
              title: Text('Household',style: TextStyle(fontWeight: FontWeight.bold)),
              centerTitle: true,
              foregroundColor: Colors.black
            ),
            body: Stack(
              children: [
                Container(
                  child: Center(child: Text("Chat",style: TextStyle(color: Colors.amber,fontSize: 35,fontWeight:FontWeight.bold),
                  ),)
                ),
              ],
            )
        )
    );
  }
}
