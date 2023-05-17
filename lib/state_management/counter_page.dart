import 'package:firstapp/state_management/my_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter =50;

  @override
  void initState() {
    counter = MyHelperClass.getSomeValue();
    super.initState();
  }
  @override
  void didUpdateWidget(covariant CounterPage oldWidget) {
    print("didUpdate ${counter}");
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void dispose() {

    // TODO: implement dispose
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$counter",style: const TextStyle(fontSize: 30),),

            ElevatedButton(onPressed: (){
              setState(() {
                counter++;
              });
            }, child: const Text("Click me"))
          ],
        ),
      ),
    );
  }
}
