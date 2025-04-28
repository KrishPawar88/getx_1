
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/Controller/profile_controller.dart';

class Profile extends GetView<ProfileController> {
  Profile({super.key});

  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Get.arguments['UserName']??"",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 5,),
          Text(Get.arguments['Count']??"",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
              onPressed: (){
                Get.back();
              },
              child: Text("Back",

              ),
          ),
        ],
      ),
    );
  }
}
