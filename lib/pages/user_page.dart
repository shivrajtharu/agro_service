import 'package:flutter/material.dart';
import 'package:household/pages/workers_page.dart';

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
            Image.network(
              user.urlAvatar,
              height: 450,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16,),
            Text(user.username,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,),),
            Text(user.email,style: TextStyle(fontSize: 20,),)
          ],
        )
      ),
    );
  }
}
