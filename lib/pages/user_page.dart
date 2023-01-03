import 'package:flutter/material.dart';
import 'package:household/pages/field_page.dart';
import 'package:household/pages/link_page.dart';
import 'package:household/pages/lives_in_page.dart';
import 'package:household/pages/location_page.dart';
import 'package:household/pages/workers_page.dart';
import 'Report_page.dart';
import 'block_page.dart';
import 'chat.dart';
import 'contact.dart';
import 'friends_page.dart';

class UserPage extends StatelessWidget {
  final User user;
  const UserPage({
    Key? key,required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.amber,
    title: Text('Household',style: TextStyle(fontWeight: FontWeight.bold)),
    centerTitle: true,
    foregroundColor: Colors.black
    ),
      body: Center(
        child: Column(
          children:<Widget> [
            Container(
              height: 300,
              width: 250,
               margin: EdgeInsets.only(top: 20,bottom: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                user.urlAvatar,
                height: 450,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Text(user.username,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
            Text(user.email,style: TextStyle(fontSize: 13,),),
            SizedBox(height: 15,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30 ),
                  child: ElevatedButton.icon(onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>FriendsPage()));
                  },
                  icon: Icon(
                    Icons.people,
                    size: 24.0,
                  ),
                    label: Text('Friends',style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(width: 10,),
                OutlinedButton.icon(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Chat()));
                },
                  icon: Icon(
                    Icons.message,color: Colors.black,
                    size: 24.0,
                  ),
                  label: Text('Message',style: TextStyle(color: Colors.black),),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(9.0),
                    color: Colors.blue,
                  ),
                  child: PopupMenuButton<int>(
                    color: Colors.grey,
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
                            Text('Find support or report'),
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
                            Icon(Icons.link, color: Colors.black,shadows: [BoxShadow(
                                color: Colors.black54,
                                offset: Offset(5.0,5.0),
                                blurRadius: 10.0,
                                spreadRadius: 2.0
                            )]
                            ),
                            SizedBox(width: 15,),
                            Text('copy link to profile'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Column(
              children: [
                InkWell(
                  onTap:  () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => FieldPage()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.work,),
                    title: Text("Works at field",style: TextStyle(fontSize: 18),),
                  ),
                ),
                InkWell(
                  onTap:  () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => LocationPage()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.location_on_outlined,),
                    title: Text("From Butwal",style: TextStyle(fontSize: 18),),
                  ),
                ),
                InkWell(
                  onTap:  () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => LivesInPage()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.home_outlined,),
                    title: Text("Lives in Nawalparasi",style: TextStyle(fontSize: 18),),
                  ),
                ),
                InkWell(
                  onTap:  () {
                    Navigator.push(context, MaterialPageRoute(builder: (
                        context) => LivesInPage()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.info_rounded,),
                    title: Text("See more About Users",style: TextStyle(fontSize: 18),),
                  ),
                ),
              ],
            ),
          ],
        )
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
          MaterialPageRoute(builder: (context) => CopyLinkPage()),
        );
    }
  }
}

