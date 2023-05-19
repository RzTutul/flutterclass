import 'package:flutter/material.dart';



class UserDetails extends StatelessWidget {
   UserDetails(this.name,this.imageUrl,{Key? key}) : super(key: key);
  String name;
  String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title:const  Text("Contract Details"),
      ),
      body:  Container(
        child: Text(name),
      ),
    );
  }
}
