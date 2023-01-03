import 'package:flutter/material.dart';
import 'package:household/pages/contact.dart';
import 'package:household/pages/event.dart';
import 'package:household/pages/feedback.dart';
import 'package:household/pages/note.dart';
import 'package:household/pages/privacy.dart';
class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children:<Widget> [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.amberAccent,
            child: Center(
              child: Column(
                children:<Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    margin:EdgeInsets.only(top: 30,bottom: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),fit: BoxFit.fill,

                      )
                    ),
                  ),
                  Text("Er.Shivraj Tharu",style: TextStyle(fontSize: 20,color: Colors.black),),
                  Text("shivrajtharu62@gmail.com",style: TextStyle(color: Colors.black54),),

                ],
              ),
            ),
          ),
          InkWell(
            onTap:  () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (
                  context) => ContactPage()));
            },
            child: ListTile(
              leading: Icon(Icons.contacts,),
              title: Text("Contacts",style: TextStyle(fontSize: 18),),
            ),
          ),
          InkWell(
            onTap:  () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (
                  context) => EventPage()));
            },
            child: ListTile(
              leading: Icon(Icons.event),
              title: Text("Events",style: TextStyle(fontSize: 18),),
            ),
          ),
          InkWell(
            onTap:  () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (
                  context) => NotePage()));
            },
            child: ListTile(
              leading: Icon(Icons.notes,),
              title: Text("Notes",style: TextStyle(fontSize: 18),),
            ),
          ),
          InkWell(
            onTap:  () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (
                  context) =>PrivacyPage()));
            },
            child: ListTile(
              leading: Icon(Icons.privacy_tip_outlined,),
              title: Text("Privacy policy",style: TextStyle(fontSize: 18),),
            ),
          ),
          InkWell(
            onTap:  () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (
                  context) =>FeedbackPage()));
            },
            child: ListTile(
              leading: Icon(Icons.feedback_outlined,),
              title: Text("Send feedback",style: TextStyle(fontSize: 18),),
            ),
          ),
        ],
      ),
    );
  }
}

