import 'package:flutter/material.dart';

import 'drawer.dart';
class FieldPage extends StatefulWidget {
  const FieldPage({Key? key}) : super(key: key);

  @override
  State<FieldPage> createState() => _FieldPageState();
}

class _FieldPageState extends State<FieldPage> {
  @override
  Widget build(BuildContext context) {
    return Container(

        decoration:BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/field.png'),fit:BoxFit.cover)),
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
                    child: Center(child: Text('Field Page',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight:FontWeight.bold),
                    ),)
                ),
              ],
            )
        )
    );
  }
}
