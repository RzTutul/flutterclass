import 'package:firstapp/global_helper.dart';
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
   final value = HelperUtils.getCounterValue();
   print(value);
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
        title: const Text("Counter App With Getx"),
          actions:[
          Obx(
          ()=> Switch(value: controller.state.value, onChanged: (state){
              controller.state.value = !controller.state.value;
             controller.state.value?Get.changeTheme(ThemeData.dark()):Get.changeTheme(ThemeData.light());

      }),
          )
      ],
      ),
      body: Center(
        child: ListView(
          children: [
            Obx(()=> Center(child: Text("${controller.counter.value}",style: const TextStyle(fontSize: 30),))),

            ElevatedButton(onPressed: (){
             // controller.counter.value++;
             controller.getSomeValue();
             controller.imagerUrl.add("https://picsum.photos/200/300?grayscale");
            }, child: const Text("Click me")),

            Obx(
                  ()=> ListView.builder(
                  shrinkWrap: true,
                  reverse: true,
                  itemCount: controller.imagerUrl.length,
                  itemBuilder: (context,position){
                    String image = controller.imagerUrl[position];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Picture ${position+1}"),
                          Image.network(image,height: 50,width: 50),

                        ],
                      ),
                    );
              }),
            )

          ],
        ),
      ),
    );
  }
}
