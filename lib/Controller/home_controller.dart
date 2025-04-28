

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController{

  RxInt count = 0.obs;
  RxInt sum = 0.obs;
  Map data = {};
  RxString first = "".obs;
  RxString second = "".obs;

  @override
  void onInit() {
    // TODO: implement onInit

    first.value = GetStorage().read('first');
    second.value = GetStorage().read('second');

    data = Get.arguments;

    first.value = data['first'];
    second.value = data['second'];

    ever(sum, (callback){
      print('Sum call');
    });

    everAll([sum,first], (callback)=>  print('Sum all call'));

    once(sum, (callback)=>  print('Sum call'));


    debounce(sum, (callback)=> print('Sum call'),time: Duration(seconds: 2));


    super.onInit();

  }

  void incrementCount(){
    count++;
  }
}