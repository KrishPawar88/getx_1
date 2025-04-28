
import 'package:get/get.dart';

class ProfileController extends GetxController{

  RxString userName ="".obs;
  RxInt count =0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    userName.value = Get.arguments['UserName']??"";
    count.value = Get.arguments['Count']??"";

  }

}