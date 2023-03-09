import 'package:flutter/material.dart';

class LoginTypePage extends StatefulWidget {
  @override
  _LoginTypePageState createState() => _LoginTypePageState();
}

class _LoginTypePageState extends State<LoginTypePage> {
  String _userType = 'Farmer';
  String _username = '';
  String _password = '';
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

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
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      controller: _usernameController,
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
                      controller: _passwordController,
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
                    SizedBox(height: 30,),
                    Text('Select user type: '),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Radio(
                            value: 'Farmer',
                            groupValue: _userType,
                            onChanged: (value) {
                              setState(() {
                                _userType = value as String;
                              });
                            },
                          ),
                          Text('Farmer'),
                          Radio(
                            value: 'Machine Owner',
                            groupValue: _userType,
                            onChanged: (value) {
                              setState(() {
                                _userType = value as String;
                              });
                            },
                          ),
                          Text('Machine Owner'),
                          Radio(
                            value: 'Plot Owner',
                            groupValue: _userType,
                            onChanged: (value) {
                              setState(() {
                                _userType = value as String;
                              });
                            },
                          ),
                          Text('Plot Owner'),
                          Radio(
                            value: 'Fertilizer Owner',
                            groupValue: _userType,
                            onChanged: (value) {
                              setState(() {
                                _userType = value as String;
                              });
                            },
                          ),
                          Text('Fertilizer Owner'),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.0),
                    ElevatedButton(
                      onPressed: () {
                        // Validate login credentials and navigate to appropriate page
                        _username = _usernameController.text;
                        _password = _passwordController.text;

                        // Use username, password, and _userType to validate login credentials
                        // and navigate to appropriate page based on _userType
                        if (_userType == 'Farmer') {
                          Navigator.pushNamed(context, 'farmer');
                        } else if (_userType == 'Machine Owner') {
                          Navigator.pushNamed(context, 'machine owner');
                        } else if (_userType == 'Plot Owner') {
                          Navigator.pushNamed(context, 'plot owner');
                        } else if (_userType == 'Fertilizer Owner') {
                          Navigator.pushNamed(context, 'fertilizer owner');
                        }
                      },
                      child: Text('Login'),
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
}