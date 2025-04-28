

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_1/Controller/home_controller.dart';
import 'package:getx_1/View/proflie.dart';

class Home extends GetView<HomeController> {
  Home({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      appBar: AppBar(
        title: Text("Increment",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        ),
        elevation: 2.5,
        titleSpacing: 21,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.arguments??"",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
            ),
            SizedBox(height: 5,),
            Text(controller.count.value.toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),

            ElevatedButton(
                onPressed: (){

                  Get.toNamed('/profile',
                      arguments: {
                        'UserName': 'Krish pawar',
                        'Count':controller.count.value.toString()
                      },
                  );

                  // Get.to(()=>Profile(),
                  // arguments: {
                  //   'UserName': 'Krish pawar',
                  //   'Count':controller.count.value.toString()
                  // }
                  // );
                },
                child: Text("Profile")
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incrementCount,
        child: Icon(Icons.add),
      ),
    ));
  }
}
