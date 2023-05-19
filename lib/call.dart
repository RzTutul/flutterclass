import 'package:flutter/material.dart';

class CallView extends StatelessWidget {
  const CallView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call History"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.green.shade100,
                        child: const Text('RZ'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Rasheduzzaman Tutul"),
                          Row(
                            children: const [
                              Icon(Icons.compare_arrows_rounded),
                              Text("Mobile * 25 min ago"),
                            ],
                          ),
                          const Text(
                            "Vodafone",
                            style: TextStyle(color: Colors.blueGrey),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.call),
              ],
            ),
          ),
          const Divider(thickness: 2.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [Icon(Icons.video_call), Text("Video call")],
              ),
              Column(
                children: const [Icon(Icons.message), Text("Message")],
              ),
              Column(
                children: const [Icon(Icons.history_outlined), Text("History")],
              ),
            ],
          )
        ],
      ),
    );
  }
}
