import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:household/ui/login_page.dart';
import 'package:household/ui/register_page.dart';
import 'package:video_player/video_player.dart';

class CoverPage extends StatefulWidget {
  const CoverPage({Key? key,}) : super(key: key);

  @override
  State<CoverPage> createState() => _CoverPageState();
}

class _CoverPageState extends State<CoverPage> {
   late VideoPlayerController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=VideoPlayerController.network( 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')
    ..initialize().then((_){
      setState((){});
    });
    controller.setLooping(true);
    controller.play();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          VideoPlayer(controller),
          Container(),
        ],
      ),
      /*body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 170),
              child: Container(
                child: Row(
                  children: [
                   RaisedButton(
                     child: Text('Sign-In'),
                     onPressed: (){
                       Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) => LoginPage(),));
                     },
                   ),
                    SizedBox(width: 20,),
                    RaisedButton(
                      child: Text('Sign-Up'),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegisterPage(),));
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 300,),
            Container(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Welcome',
                    textStyle: TextStyle(fontSize: 30),
                    speed: Duration(microseconds: 10000),),
                  TypewriterAnimatedText('TO',
                    textStyle: TextStyle(fontSize: 30),
                    ),
                  TypewriterAnimatedText('Agriculture World',
                    textStyle: TextStyle(fontSize: 30),
                    ),
                ],
              ),
            ),
          ],
        ),*/
    );
  }
}
