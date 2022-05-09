import 'dart:async';

import 'package:flutter/material.dart';
import 'package:realapp/widgets/homepage.dart';
import 'package:realapp/widgets/signin_page.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
static final String id="splash_page";
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  var isLoggedin=false;

  _initTimer(){
    Timer(Duration(seconds: 3),(){
      if (isLoggedin){
        Navigator.pushReplacementNamed(context,HomePage.id);
      }else {
        Navigator.pushReplacementNamed(context,SignInPage.id);
      }

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        child: Stack(
          children:<Widget> [
            Center(
              child: Image.asset("assets/images/111.jpg",width: 80, height: 80,),
            ),
            Container(
              padding: EdgeInsets.all(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text("From Amazon",style: TextStyle(fontSize: 17,color: Colors.black87),),
                  )
                ],
              ),
            )
          ],
        ),


      ));
  }
}
