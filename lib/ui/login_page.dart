import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  Future<void> _login() async {
    setState(() {
      _isLoading = true;
    });

    final response = await http.post(
      Uri.parse('http://localhost:8000/login'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'email': _emailController.text,
        'password': _passwordController.text,
      }),
    );

    if (response.statusCode == 200) {
      final token = json.decode(response.body)['token'];
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('token', token);

      Navigator.of(context).pushReplacementNamed('/dashboard');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid credentials.'),
          backgroundColor: Colors.red,
        ),
      );
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login.png'),fit:BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          title: Text("Agro Service",style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.amber,
        ),
        body: _isLoading
            ? Center(
          child: CircularProgressIndicator(),
        )
        :Stack(
          children: [
            Container(
              padding:EdgeInsets.only(top: 80,left: 115) ,
              child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight:FontWeight.bold),
              ),
            ),
               SingleChildScrollView(
                 child: Container(
                  padding: EdgeInsets.only(top: 180,left: 35,right: 35),
                  child: Column(
                    children: [
                      TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            labelText: 'email',
                            hintText: "Enter your email",
                            labelStyle: TextStyle(color: Colors.grey.shade700),
                            prefixIcon: Icon(Icons.email_outlined),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: _passwordController,
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                        ),
                               filled: true,
                          labelText: 'Password',
                          hintText:'Enter your password',
                          labelStyle: TextStyle(color: Colors.grey.shade700),
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure ? Icons.visibility_off : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                             Container(
                              height:50,
                            width: 250,
                            decoration: BoxDecoration(color:Colors.grey,borderRadius:BorderRadius.circular(15),
                            ),
                               child: TextButton(child: Text('LOGIN',style: TextStyle(fontSize: 15,color: Colors.black)),
                                 onPressed: (){
                                    Navigator.pushNamed(context,'loginType');
                                 },
                               ),
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context,'password');
                              },
                              child: Text('Forgot your password?',
                                style: TextStyle(decoration: TextDecoration.underline,
                                  fontSize: 12,
                                  color:Colors.white,
                                ),
                              )
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context,'register');
                              },
                              child: Text('Signup',
                                style: TextStyle(decoration: TextDecoration.underline,
                                  fontSize: 13,
                                  color:Colors.white,
                                ),
                              )
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 1.5,
                              width: 110,
                              color: Colors.white,
                            ),
                          ),
                           Text('Or Sign in with',style: TextStyle(fontSize: 13,color: Colors.white,),),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 1.5,
                              width: 110,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:<Widget> [
                             InkWell(
                              onTap: () {},
                                borderRadius: BorderRadius.circular(50.0),
                              child: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/facebook.png'),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                              )
                            ),

                           InkWell(
                            onTap: () {},
                             borderRadius: BorderRadius.circular(18.0),
                            child: Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/google.png'),
                                      fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                            )
                            ),
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(17.0),
                            child: Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/instagram.png'),
                                      fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                            )
                          ),
                        ],
                      ),
                    ],
                  ),
              ),
               ),
          ],
        ),
      ),
    );
  }
}
