import 'package:flutter/material.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/all.jpg'),fit:BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
                backgroundColor: Colors.amber,
                title: Text('Household',style: TextStyle(fontWeight: FontWeight.bold)),
                centerTitle: true,
                foregroundColor: Colors.black
            ),
            body: Stack(
              children: [
                Container(
                    child: Center(child: Text("Edit Profile\nPage",style: TextStyle(color: Colors.amber,fontSize: 35,fontWeight:FontWeight.bold),
                    ),)
                ),
              ],
            )
        )
    );
  }
}


