import 'package:firstapp/state_management/controller/counter_controller.dart';
import 'package:firstapp/state_management/my_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPageGetX extends StatefulWidget {
  const CounterPageGetX({Key? key}) : super(key: key);

  @override
  State<CounterPageGetX> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPageGetX> {
  var controller = Get.put(CounterController());

  @override
  void initState() {
    super.initState();
  }
  @override
  void didUpdateWidget(covariant CounterPageGetX oldWidget) {
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
        backgroundColor: Colors.orangeAccent,
        title: const Text("Counter App With Getx"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Obx(()=> Text("${controller.counter.value}",style: const TextStyle(fontSize: 30),)),

            ElevatedButton(onPressed: (){
             // controller.counter.value++;
             controller.getSomeValue();
             controller.imagerUrl.add("https://picsum.photos/200/300?grayscale");
            }, child: const Text("Click me")),


            Obx(
                  ()=> SizedBox(
                    height: 350,
                    child: ListView.builder(
                    itemCount: controller.imagerUrl.length,
                    itemBuilder: (context,index){
                      String image = controller.imagerUrl[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Picture ${index+1}"),
                            Image.network(image,height: 50,width: 50),

                          ],
                        ),
                      );
              }),
                  ),
            )

          ],
        ),
      ),
    );
  }
}
