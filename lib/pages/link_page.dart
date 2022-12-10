import 'package:flutter/material.dart';

import 'drawer.dart';
class CopyLinkPage extends StatefulWidget {
  const CopyLinkPage({Key? key}) : super(key: key);

  @override
  State<CopyLinkPage> createState() => _CopyLinkPageState();
}

class _CopyLinkPageState extends State<CopyLinkPage> {
  @override
  Widget build(BuildContext context) {
    return Container(decoration:BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/all.jpg'),fit:BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
                backgroundColor: Colors.indigo,
                title: Text('Household',style: TextStyle(fontWeight: FontWeight.bold)),
                centerTitle: true,
                foregroundColor: Colors.black
            ),
            drawer: MyDrawer(),
            body: Stack(
              children: [
                Container(
                    child: Center(child: Text("Link page",style: TextStyle(color: Colors.amber,fontSize: 35,fontWeight:FontWeight.bold),
                    ),)
                ),
              ],
            )
        )
    );
  }
}
