import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:groovin_material_icons/groovin_material_icons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login.png'),fit:BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Household",style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.amber,
        ),
        body: Stack(
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
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            labelText: 'email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                        ),
                               filled: true,
                          labelText: 'Password',
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
                          // TextButton(
                          //   onPressed: () {
                          //     Navigator.pushNamed(context,'home');
                          //   },
                             Container(
                              height:50,
                            width: 250,
                            decoration: BoxDecoration(color:Colors.grey,borderRadius:BorderRadius.circular(15),
                            ),
                               child: TextButton(child: Text('LOGIN',style: TextStyle(fontSize: 15,color: Colors.black)),
                                 onPressed: (){
                                   Navigator.pushNamed(context,'home');
                                 },),
                                // child: const Center(child: Text("LOGIN",style: TextStyle(color: Colors.black,fontSize: 15),)
                                // )
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
