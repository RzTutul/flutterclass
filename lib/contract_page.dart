
import 'package:firstapp/contract_details.dart';
import 'package:firstapp/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipe_to/swipe_to.dart';

class ContractPage extends StatelessWidget {
  ContractPage({Key? key}) : super(key: key);

/*
  List<String> phone =["01924250146","018454654654","89654654654"];
  List<String> image =["https://picsum.photos/id/237/200/300","https://picsum.photos/seed/picsum/200/300","https://picsum.photos/200/300?grayscale"];
*/

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
                  itemCount: UserModel.getUserInfo().length,
                  itemBuilder: (context,position){
                    UserModel user = UserModel.getUserInfo()[position]; //list[position]

                    return  SwipeTo(
                      onRightSwipe: (){
                      },
                      child: InkWell(
                        onTap: (){
                          //Route another page
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>ContractDetailsPage(user.phone!,"your image url")));
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
                                  child: Image.network(user.imageUrl!
                                    ,width: 50,height: 50,
                                  ),
                                ),
                              ),


                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                                    child: Text(user.name!,style: TextStyle(fontSize: 16,color: Colors.black),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                                    child: Text(user.phone!,style: TextStyle(fontSize: 16,color: Colors.black),),
                                  ),
                                ],
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
