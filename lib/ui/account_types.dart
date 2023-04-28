import 'package:flutter/material.dart';
import 'package:household/ui/farmer_register_page.dart';
import 'package:household/ui/machine_register_page.dart';
import 'package:household/ui/plot_register_page.dart';

class AccountTypePage extends StatefulWidget {
  @override
  _AccountTypePageState createState() => _AccountTypePageState();
}

class _AccountTypePageState extends State<AccountTypePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Account Types",style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 30,bottom: 30),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),fit: BoxFit.fill,
                  ),
              ),
            ),
          ),
          Container(
            padding:EdgeInsets.only(left: 10),
            child: Text("User Types",style: TextStyle(
                fontSize: 40,
                color: Colors.blue,
                fontWeight:FontWeight.bold),
            ),
          ),
          SizedBox(height: 35,),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) => FarmerRegisterPage()));
                    },
                    child: Text('Farmer')
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) => MachineRegisterPage()));
                    },
                    child: Text('machine owner')
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) => PlotRegisterPage()));
                    },
                    child: Text('Plot owner')
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}