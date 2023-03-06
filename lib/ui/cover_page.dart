import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:household/ui/register_page.dart';
import 'login_page.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Overview',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.blue],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
        ),
        body:SafeArea(
          child: ListView(
            children: [
              Column(
                  children: [
                    Container(
                      child: Container(
                        width: double.infinity,
                        height: 220,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/cover.png'),fit:BoxFit.cover)
                        ),
                        child: Row(
                          children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 170,bottom: 40),
                                          child: Container(
                                            margin: EdgeInsets.only(top:10),
                                              child: Row(
                                                  children: [
                                                    ElevatedButton(
                                                      child: Text('Sign-In'),
                                                      onPressed: (){
                                                        Navigator.of(context).push(MaterialPageRoute(
                                                          builder: (context) => LoginPage(),));
                                                      },
                                                    ),
                                                    SizedBox(width: 20,),
                                                    ElevatedButton(
                                                      child: Text('Sign-Up'),
                                                      onPressed: (){
                                                        Navigator.of(context).push(MaterialPageRoute(
                                                          builder: (context) => RegisterPage(),));
                                                      },
                                                    ),
                                                  ]
                                              )
                                          ),
                                        ),
                                          Container(
                                            alignment: Alignment.center,
                                            child: AnimatedTextKit(
                                              animatedTexts: [
                                                TypewriterAnimatedText('Welcome',
                                                    speed: Duration(milliseconds:100),
                                                    textStyle: TextStyle(
                                                      fontSize: 35,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                    )
                                                ),
                                                ScaleAnimatedText('To',
                                                  textStyle: TextStyle(
                                                    fontSize: 35,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,),
                                                ),
                                                TypewriterAnimatedText('Agriculture World',
                                                    textStyle: TextStyle(
                                                      fontSize: 35,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                    )
                                                ),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                             ),
                           ),
                         ),
                    Divider(
                        color: Colors.grey,
                    ),
                    Container(
                      color: Colors.grey,
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 10,right: 10,),
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/images/cover_topic.png'),fit:BoxFit.cover)
                        ),
                        child: Text('Agro Service',style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),),
                      ),
                    ),
                  ],
                ),
              Container(
                color: Colors.grey,
                   child: Container(
                      color: Colors.grey,
                      margin: EdgeInsets.only(left: 20),
                      child: Text('Farmers',style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),),
                    ),
              ),
              Container(
                color: Colors.grey,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10,right:10),
                      color: Colors.grey,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(10)
                              ),
                                   child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                          width: 180,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/irrigation.png'),fit: BoxFit.cover)
                                        ),
                                        ),
                                        SizedBox(height: 15,),
                                        Container(
                                          child: Text('Irrigating',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                                  child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                          width: 180,
                                          height: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  image: AssetImage('assets/images/harvesting1.png'),fit: BoxFit.cover)
                                          ),
                                        ),
                                        SizedBox(height: 15,),
                                        Container(
                                          child: Text('Harvesting',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                          width: 180,
                                          height: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  image: AssetImage('assets/images/caring.png'),fit: BoxFit.cover)
                                          ),
                                        ),
                                        SizedBox(height: 15,),
                                        Container(
                                          child: Text('Caring',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                          width: 180,
                                          height: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  image: AssetImage('assets/images/farmer_planting.png'),fit: BoxFit.cover)
                                          ),
                                        ),
                                        SizedBox(height: 15,),
                                        Container(
                                          child: Text('Planting',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.topLeft,
                      child: Text('Fertilizers & Pesticides',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      color: Colors.grey,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                    width: 180,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/organic.png'),fit: BoxFit.cover)
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    child: Text('Organic',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                    width: 180,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/urea.png'),fit: BoxFit.cover)
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    child: Text('Urea',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                    width: 180,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/dap.png'),fit: BoxFit.cover)
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    child: Text('DAP',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                    width: 180,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/pesticides.png'),fit: BoxFit.cover)
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    child: Text('Pesticide',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.topLeft,
                      child: Text('Plots',style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                           color: Colors.white,
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      color: Colors.grey,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                          width: 180,
                                          height: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  image: AssetImage('assets/images/plot1.png'),fit: BoxFit.cover)
                                          ),
                                        ),
                                        SizedBox(height: 15,),
                                        Container(
                                          child: Text('Plot A',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                          width: 180,
                                          height: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  image: AssetImage('assets/images/plot2.png'),fit: BoxFit.cover)
                                          ),
                                        ),
                                        SizedBox(height: 15,),
                                        Container(
                                          child: Text('Plot B',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                          width: 180,
                                          height: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  image: AssetImage('assets/images/plot3.png'),fit: BoxFit.cover)
                                          ),
                                        ),
                                        SizedBox(height: 15,),
                                        Container(
                                          child: Text('Plot C',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                          width: 180,
                                          height: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  image: AssetImage('assets/images/plot5.png'),fit: BoxFit.cover)
                                          ),
                                        ),
                                        SizedBox(height: 15,),
                                        Container(
                                          child: Text('Plot D',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.topLeft,
                      child: Text('Machines',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      color: Colors.grey,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                    width: 180,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/harvester2.png'),fit: BoxFit.cover)
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    child: Text('Harvester',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                    width: 180,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/cover_pump_set.png'),fit: BoxFit.cover)
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    child: Text('Pump Set',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                    width: 180,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/thresher.png'),fit: BoxFit.cover)
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    child: Text('Thresher',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height:250,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                    width: 180,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/tractor1.png'),fit: BoxFit.cover)
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    child: Text('Tractor',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
