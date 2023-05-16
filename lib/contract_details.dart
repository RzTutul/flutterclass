import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipe_to/swipe_to.dart';

import 'model/user_model.dart';

class ContractDetailsPage extends StatelessWidget {
   ContractDetailsPage(this.phoneNumber,this.imageUrl,this.name, {Key? key}) : super(key: key);
   String phoneNumber;
   String imageUrl;
   String name;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           expandedHeight: 150,
           flexibleSpace: FlexibleSpaceBar(
             title: Text(name,style: TextStyle(color: Colors.black),),
             background: Hero(
               tag: "$phoneNumber",
               child: Image.network(imageUrl,fit: BoxFit.cover,),
             ),
           ),
         ),

         SliverList(delegate: SliverChildListDelegate([
           Column(children: [

             Padding(
               padding: const EdgeInsets.symmetric(vertical: 8.0),
               child: Container(
                 width: 300,
                 child:  Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                         width: 150,
                         height: 40,
                         decoration:  BoxDecoration(
                             color: Colors.blueGrey.withOpacity(0.1),
                             borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30) )
                         ),
                         child: Center(child: Text("Test1",style: TextStyle(color: Colors.black),))),


                     Container(
                         width: 150,
                         height: 40,
                         decoration:  BoxDecoration(
                             color: Colors.black,
                             borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),topRight: Radius.circular(30) )
                         ),
                         child: Center(child: Text("Test1",style: TextStyle(color: Colors.white),))),

                   ],
                 ),
               ),
             ),

             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 decoration:  BoxDecoration(
                     color: Colors.blueGrey.withOpacity(0.1),
                     borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30) )
                 ),
                 child: const Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [

                       Icon(Icons.search)
                     ],
                   ),
                 ),
               ),
             ),

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
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>ContractDetailsPage(user.phone!,user.imageUrl!,user.name!)));
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
                                 child: Hero(
                                   tag: user.phone!,
                                   child: Image.network(user.imageUrl!
                                     ,width: 50,height: 50,
                                   ),
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

           ],)
         ]))
       ],

     ),

/*      Stack(
        children: [
          Image.network(imageUrl,fit: BoxFit.cover,height: 250,width:double.infinity,),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0,top: 50),
                child: Icon(Icons.arrow_back,color: Colors.white,),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20.0,top: 50),
                child: Text("My name is RZ Tutul"),
              )
            ],
          ),
          



        ],
      )*/
    );
  }
}
