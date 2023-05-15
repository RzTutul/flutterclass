
import 'package:firstapp/contract_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipe_to/swipe_to.dart';

class ContractPage extends StatelessWidget {
  ContractPage({Key? key}) : super(key: key);

  List<String> phone =["01924250146","018454654654","89654654654","56465465465","145465654654","123412412432"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Text("Contract List"),
        ),
        body:  SingleChildScrollView(
          child: Column(
            children: [
              //for text
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("This is my contract",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                ),
              ),
              //image,phone number
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: phone.length,
                  itemBuilder: (context,position){
                    return  SwipeTo(
                      onRightSwipe: (){

                      },

                      child: InkWell(
                        onTap: (){
                          //Route another page
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>ContractDetailsPage(phone[position],"your image url")));
                        },
                        onDoubleTap: (){

                        },
                        onLongPress: (){
                          print("Long press calling");
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  child: Image.network("https://media.licdn.com/dms/image/C5603AQGNJvU8H1TwhQ/profile-displayphoto-shrink_800_800/0/1614058429065?e=2147483647&v=beta&t=RDt68jE35OfezhX4Bpeb40ZSsspfF_RJPJznpg2L0s8"
                                    ,width: 50,height: 50,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: Text(phone[position],style: TextStyle(fontSize: 16,color: Colors.black),),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })

            ],
          ),
        )
    );
  }
}
