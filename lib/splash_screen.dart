import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'gridview_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Get.to(const GridviewExample(),transition: Transition.downToUp,duration: const Duration(seconds: 1));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height:size.height*0.9,
                width: size.width*1,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius:BorderRadius.only(bottomLeft: Radius.circular(80),bottomRight: Radius.circular(80))
                ),
                child: Center(child: Column(
                  children: [

                    const Text("Hello Flutter"),
                  ],
                )),
              ),


            ],
          ),


          const Align(
              alignment: Alignment.bottomCenter,
              child: Text("Hello Flutter"))
        ],
      )
    );
  }
}
