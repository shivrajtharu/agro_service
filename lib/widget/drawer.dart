import 'package:flutter/material.dart';
import 'package:household/data/contact.dart';
import 'package:household/data/event.dart';
import 'package:household/pages/feedback.dart';
import 'package:household/data/privacy.dart';
import 'package:household/note.dart';
import '../about developers.dart';

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
                  Text("Mr.Shivraj Tharu",style: TextStyle(fontSize: 20,color: Colors.black),),
                  Text("shivrajtharu62@gmail.com",style: TextStyle(color: Colors.black54),),

                ],
              ),
            ),
          ),
          InkWell(
            onTap:  () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutDevelopersPage(key: Key('value'),)),
              );
            },
            child: ListTile(
              leading: Icon(Icons.contacts,),
              title: Text("About Developers",style: TextStyle(fontSize: 18),),
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
                  context) =>PrivacyPolicyPage()));
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

