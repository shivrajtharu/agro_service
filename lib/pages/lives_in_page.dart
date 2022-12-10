import 'package:flutter/material.dart';
import 'package:household/pages/drawer.dart';
class LivesInPage extends StatefulWidget {
  const LivesInPage({Key? key}) : super(key: key);

  @override
  State<LivesInPage> createState() => _LivesInPageState();
}

class _LivesInPageState extends State<LivesInPage> {
  @override
  Widget build(BuildContext context) {
    return Container(

        decoration:BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Nawalparasi.png'),fit:BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
                backgroundColor: Colors.indigo,
                title: Text('Household',style: TextStyle(fontWeight: FontWeight.bold)),
                centerTitle: true,
                foregroundColor: Colors.black,
            ),
            drawer: MyDrawer(),
            body: Stack(
              children: [
                Container(
                    child: Center(child: Text('Nawalparasi',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight:FontWeight.bold),
                    ),)
                ),
              ],
            )
        )
    );
  }
}
