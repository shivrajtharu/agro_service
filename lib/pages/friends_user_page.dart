import 'package:flutter/material.dart';
import '../call.dart';
import '../Report.dart';
import '../pages/block_page.dart';
import '../pages/field_page.dart';
import '../data/info_page.dart';
import '../data/link_page.dart';
import '../pages/lives_in_page.dart';
import '../pages/location_page.dart';

class FriendsUserPage extends StatelessWidget {
  final  user;
  const FriendsUserPage({
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
                    child: ElevatedButton.icon(onPressed:() {
                      _friendEditModalBottomSheet(context);
                    },
                      icon: Icon(
                        Icons.people,
                        size: 24.0,
                      ),
                      label: Text('Friends',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  SizedBox(width: 10,),
                  OutlinedButton.icon(
                    onPressed:(){
                      _messageEnterModalBottomSheet(context);
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
                          context) => InfoPage()));
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
  void  _friendEditModalBottomSheet(context){
    showModalBottomSheet(context: context, builder: (BuildContext){
      return Container(
        height: MediaQuery.of(context).size.height * .30,
        child: Column(
          children: [
            InkWell(
              onTap:  () {

              },
              child: ListTile(
                leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Icon(Icons.people,)),
                title: Text("Take a Break",style: TextStyle(fontSize: 17),),
              ),
            ),
            InkWell(
              onTap:  () {

              },
              child: ListTile(
                leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Icon(Icons.access_time_filled)),
                title: Text("Snooze for 30 days",style: TextStyle(fontSize: 17),),
              ),
            ),
            InkWell(
              onTap:  () {

              },
              child: ListTile(
                leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Icon(Icons.credit_card_off,)),
                title: Text("Unfollow",style: TextStyle(fontSize: 17),),
              ),
            ),
            InkWell(
              onTap:  () {

              },
              child: ListTile(
                leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Icon(Icons.person_remove,)),
                title: Text("Unfriend",style: TextStyle(fontSize: 17),),
              ),
            ),
          ],
        ),
      );
    });
  }
  void _messageEnterModalBottomSheet(context){
    showModalBottomSheet(context: context, builder: (BuildContext){
      return Container(
        height: 400,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                autofocus: true,
                decoration:InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 220),
              child:ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Stack(
                  children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {

                      },
                      child: const Text('Send',style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
  onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Call()),
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
