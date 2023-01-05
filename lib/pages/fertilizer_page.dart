import 'package:flutter/material.dart';

class FertilizerPage extends StatefulWidget {
  const FertilizerPage({Key? key}) : super(key: key);

  @override
  State<FertilizerPage> createState() => _FertilizerPageState();
}

class _FertilizerPageState extends State<FertilizerPage> {
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
                title: Text('Fertilizers',style: TextStyle(fontWeight: FontWeight.bold)),
                centerTitle: true,
                foregroundColor: Colors.black
            ),
            body: Stack(
              children: [
                Container(
                    child: Center(child: Text("Fertilizers page",style: TextStyle(color: Colors.amber,fontSize: 35,fontWeight:FontWeight.bold),
                    ),)
                ),
              ],
            )
        )
    );
  }
}
