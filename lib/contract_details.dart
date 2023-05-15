import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContractDetailsPage extends StatelessWidget {
   ContractDetailsPage(this.phoneNumber,this.imageUrl, {Key? key}) : super(key: key);
   String phoneNumber;
   String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Contract Details"),
       ),
      body: Container(
        child: Text(phoneNumber),
      ),
    );
  }
}
