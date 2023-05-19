import 'package:firstapp_tutul/model/user_model.dart';
import 'package:firstapp_tutul/user_details.dart';
import 'package:flutter/material.dart';


class ExternalUsers extends StatelessWidget {
  ExternalUsers({Key? key}) : super(key: key);
  List<String> moment = ["08:44", "10:33", "06:33"];
  List<String> phone = ["Rico Willis", "Alex Tutul", "Ray Charles"];
  List<String> message = [
    "Hello Sir. How are you doing",
    "Wanna eat lunch?",
    "Hey Whatsup?? how are you.."
  ];
  List<String> users = [

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("User"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "User List",
                  style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                ),
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: UserModel.getUserInfo().length,
                itemBuilder: (context, position) {
                  UserModel user = UserModel.getUserInfo()[position]; //list[position]
                  return InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>UserDetails(user.name!,user.imageUrl!)));
                    },


                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child:
                                  CircleAvatar(
                                    radius: 30.0,
                                    backgroundImage:
                                    NetworkImage(user.imageUrl!),
                                    backgroundColor: Colors.transparent,
                                  )

                                // ClipRRect(
                                //   borderRadius:
                                //       const BorderRadius.all(Radius.circular(30)),
                                //   child: Image.network(
                                //     users[position],
                                //     width: 50,
                                //     height: 50,
                                //   ),
                                // ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      user.name!,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      user.message!,
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            user.moment!,
                            style:
                            const TextStyle(fontSize: 10, color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

