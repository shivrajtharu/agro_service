import 'package:flutter/material.dart';
import '../data/info_page.dart';
import '../data/link_page.dart';
import '../news.dart';
import '../activity_log_Page.dart';
import '../archive_page.dart';
import 'edit_profile_page.dart';
import 'field_page.dart';
import 'friends_page.dart';
import 'lives_in_page.dart';
import 'location_page.dart';

class Profile extends StatelessWidget {
  final String name;
  final String email;
  final String charge;

  Profile({
    required this.name,
    required this.email,
    required this.charge,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        foregroundColor: Colors.black,
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 200,
            child: Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            name,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            email,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            charge,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
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
                Navigator.push(context, MaterialPageRoute(builder:(context)=>EditProfile(charge: 'daily,Rs.1000', name: 'Mr.Shivraj Tharu ', email: 'shivrajtharu62@gmail.com',)));
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
    );
  }
  onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ActivityLog()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ArchivePage()),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => CopyLinkPage()),
        );
    }
  }
}
