import 'package:flutter/material.dart';
import 'package:household/pages/workers_page.dart';
import 'Report_page.dart';
import 'block_page.dart';
import 'contact.dart';

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
              height: 400,
              width: 300,
              margin: EdgeInsets.only(top: 30,bottom: 10),
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50 ),
                  child: ElevatedButton.icon(onPressed:(){},
                  icon: Icon(
                    Icons.people,
                    size: 24.0,
                  ),
                    label: Text('Friends',style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(width: 10,),
                OutlinedButton.icon(onPressed:(){},
                  icon: Icon(
                    Icons.message,color: Colors.black,
                    size: 24.0,
                  ),
                  label: Text('Message',style: TextStyle(color: Colors.black),),
                ),
                PopupMenuButton<int>(
                  color: Colors.white,
                  onSelected: (item) => onSelected(context, item),
                  itemBuilder: (context) =>
                  [
                    PopupMenuItem<int>(
                      value: 0,
                      child: Row(
                        children: [
                          Icon(Icons.contacts, color: Colors.black,),
                          Text('Contacts'),
                        ],
                      ),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Row(
                        children: [
                          Icon(Icons.report, color: Colors.black,),
                          Text('Find support or report'),
                        ],
                      ),
                    ),
                    PopupMenuItem<int>(
                      value: 2,
                      child: Row(
                        children: [
                          Icon(Icons.block, color: Colors.black,),
                          Text('Block'),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text(user.username,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,),),
            Text(user.email,style: TextStyle(fontSize: 20,),)
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
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => BlockPage()),
              (route) => false,
        );
    }
  }
}

