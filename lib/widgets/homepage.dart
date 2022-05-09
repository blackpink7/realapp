import 'dart:async';

import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
static final String id="home_page";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Amazon",style: TextStyle(fontSize: 40,fontFamily: 'Billabong',color: Colors.black87),),
        ),
      ),
      body: Center(
        child:  Text("Welcome to HomePage"),
      ),
    );
  }
}
