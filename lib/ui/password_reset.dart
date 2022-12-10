import 'package:flutter/material.dart';

class PasswordReset extends StatefulWidget {
  const PasswordReset({Key? key}) : super(key: key);

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Household",style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.indigo,
      ),
      body: Stack(
          children: [
      Padding(
        padding: const EdgeInsets.only(top: 110,left: 80),
         child: Container(
        child: Text("Password Reset",
          style: TextStyle(color: Colors.indigo,fontSize:30,fontWeight:FontWeight.bold),
        ),
     ),
      ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 35,right: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Enter the email address associated with your account and we'll send you a link to reset your password.",
                      style: TextStyle(color: Colors.green,fontSize:11,fontWeight:FontWeight.bold),),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email:'
                      ),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(color:Colors.indigoAccent,borderRadius:BorderRadius.circular(15),
                      ),
                       child: TextButton(child: Text('Send Request',style: TextStyle(fontSize: 17)),onPressed: (){},),
                    )
                  ],
                ),
              ),
            )
    ]
    )
    );

  }
}
