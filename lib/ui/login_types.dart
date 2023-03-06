import 'package:flutter/material.dart';

class LoginTypePage extends StatefulWidget {
  @override
  _LoginTypePageState createState() => _LoginTypePageState();
}

class _LoginTypePageState extends State<LoginTypePage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';
  String _userType = '';

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
                      height: 200,
                      width: 200,
                      margin:EdgeInsets.only(top:30,bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/logo.png'),fit: BoxFit.fill,

                          )
                      ),
                    ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          hintText: 'Enter your username',
                          prefixIcon: Icon(Icons.person_outline)
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _username = value!;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password',
                            prefixIcon: Icon(Icons.lock_outline)
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value!;
                        },
                      ),
                      SizedBox(height: 30.0),
                      Text('Select User Type:'),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Radio(
                              value: 'farmer',
                              groupValue: _userType,
                              onChanged: (value) {
                                setState(() {
                                  _userType = value as String;
                                });
                              },
                            ),
                            Text('Farmer'),
                            Radio(
                              value: 'machine owner',
                              groupValue: _userType,
                              onChanged: (value) {
                                setState(() {
                                  _userType = value as String;
                                });
                              },
                            ),
                            Text('Machine owner'),
                            Radio(
                              value: 'plot',
                              groupValue: _userType,
                              onChanged: (value) {
                                setState(() {
                                  _userType = value as String;
                                });
                              },
                            ),
                            Text('Plot owner'),
                            Radio(
                              value: 'fertilizer',
                              groupValue: _userType,
                              onChanged: (value) {
                                setState(() {
                                  _userType = value as String;
                                });
                              },
                            ),
                            Text('Fertilizer owner'),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(
                        onPressed: () {
                          _handleLogin();
                          Navigator.pushNamed(context,'home');
                        },
                        child: Text('Log in'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }

  void _handleLogin() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Perform login action based on user type
      if (_userType == 'farmer') {
        // switch (hashCode) {
        //   case 0:
        //     Navigator.of(context).push(
        //       MaterialPageRoute(builder: (context) => Home()),
        //     );
            // Log in as worker
            print(
                'Logging in as farmer with username $_username and password $_password');
            // break;
        // }
      } else if (_userType == 'machine owner') {
            // Log in as owner
            print(
                'Logging in as machine owner with username $_username and password $_password');
      } else if (_userType == 'plot owner') {
            // Log in as customer
            print(
                'Logging in as plot owner with username $_username and password $_password');
      }
      else if (_userType == 'fertilizer owner') {
        // Log in as customer
        print(
            'Logging in as fertilizer owner with username $_username and password $_password');
      }
    }
  }
}
