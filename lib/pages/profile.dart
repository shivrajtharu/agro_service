import 'package:flutter/material.dart';
import 'package:household/pages/account_page.dart';
import 'package:household/pages/activity_log_Page.dart';
import 'package:household/pages/archive_page.dart';
import 'package:household/pages/edit_profile_page.dart';
import 'package:household/pages/friends_page.dart';
import 'package:household/pages/info_page.dart';
import 'package:household/pages/news.dart';
import 'package:household/pages/photo_page.dart';

import 'field_page.dart';
import 'link_page.dart';
import 'lives_in_page.dart';
import 'location_page.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('My Profile',style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          foregroundColor: Colors.black
      ),
      body:Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration:BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/all.jpg'),fit:BoxFit.cover,)),
                child:Column(
                  children:<Widget>[
                    InkWell(
                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) => PhotoPage()));
                    },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin:EdgeInsets.only(top:30,bottom: 10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/profile.png'),fit: BoxFit.fill,

                            )
                        ),
                      ),
                    ),
                    ],
                ),
            ),
                    SizedBox(height: 10,),
                    Text("Er.Shivraj Tharu",style: TextStyle(fontSize: 20,color: Colors.black),),
                    Text("shivrajtharu62@gmail.com",style: TextStyle(color: Colors.black54),),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20 ),
                          child: ElevatedButton.icon(onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>News()));
                          },
                            icon: Icon(
                              Icons.add,
                              size: 24.0,
                            ),
                            label: Text('Add to news',style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        SizedBox(width: 10,),
                        OutlinedButton.icon(onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>EditProfile()));
                        },
                          icon: Icon(
                            Icons.edit,color: Colors.black,
                            size: 24.0,
                          ),
                          label: Text('Edit profile',style: TextStyle(color: Colors.black),),
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
                                    Icon(Icons.report_problem_rounded, color: Colors.indigo,shadows: [BoxShadow(
                                        color: Colors.indigoAccent,
                                        offset: Offset(5.0,5.0),
                                        blurRadius: 10.0,
                                        spreadRadius: 2.0
                                    )],),
                                    SizedBox(width: 15,),
                                    Text('Account Status'),
                                  ],
                                ),
                              ),
                              PopupMenuItem<int>(
                                value: 1,
                                child: Row(
                                  children: [
                                    Icon(Icons.view_list_outlined, color: Colors.black87,shadows: [BoxShadow(
                                        color: Colors.black54,
                                        offset: Offset(5.0,5.0),
                                        blurRadius: 10.0,
                                        spreadRadius: 2.0
                                    )]),
                                    SizedBox(width: 15,),
                                    Text('Activity log'),
                                  ],
                                ),
                              ),
                              PopupMenuItem<int>(
                                value: 2,
                                child: Row(
                                  children: [
                                    Icon(Icons.archive_outlined, color: Colors.deepOrange,shadows: [BoxShadow(
                                        color: Colors.deepOrangeAccent,
                                        offset: Offset(5.0,5.0),
                                        blurRadius: 10.0,
                                        spreadRadius: 2.0
                                    )]
                                    ),
                                    SizedBox(width: 15,),
                                    Text('Archive'),
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
                                context) => FriendsPage()));
                          },
                          child: ListTile(
                            leading: Icon(Icons.people,),
                            title: Text("My Friends",style: TextStyle(fontSize: 18),),
                          ),
                        ),
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
                                context) => InfoPage()));
                          },
                          child: ListTile(
                            leading: Icon(Icons.info_rounded,),
                            title: Text("See more About Yourself",style: TextStyle(fontSize: 18),),
                          ),
                        ),
                      ],
                    ),
          ],
        ),
      ),
    );
  }
  onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => AccountPage()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ActivityLog()),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ArchivePage()),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => CopyLinkPage()),
        );
    }
  }
}
