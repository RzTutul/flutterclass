import 'package:firstapp/global_helper.dart';
import 'package:get/get.dart';

class CounterController extends GetxController
{
  final counter = 0.obs;
  final name = "".obs;
  final imagerUrl = [].obs;
  final state = false.obs;


  int getSomeValue()
  {
    counter.value = counter.value+1;
    HelperUtils.storeCounterValue(counter.value);
    return counter.value;
  }
  
  insertImages()
  {
    imagerUrl.add("https://picsum.photos/seed/picsum/200/300");
    imagerUrl.add("https://picsum.photos/200/300?grayscale");
    imagerUrl.add("https://picsum.photos/seed/picsum/200/300");
  }



  @override
  void onInit() {
     insertImages();
    super.onInit();
  }
}