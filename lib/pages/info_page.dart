import 'package:flutter/material.dart';
import 'package:household/pages/drawer.dart';
class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(

        decoration:BoxDecoration(
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
                    child: Center(child: Text("Information Page",style: TextStyle(color: Colors.amber,fontSize: 35,fontWeight:FontWeight.bold),
                    ),)
                ),
              ],
            )
        )
    );
  }
}
