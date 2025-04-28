

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_1/Controller/login_controller.dart';
import 'package:getx_1/View/home.dart';

class Login extends GetView<LoginController>{
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            controller: controller.first,
            decoration: InputDecoration(
              hintText: 'Enter The First Value',
              hintStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              prefixIcon: Icon(Icons.numbers,size: 25,color: Colors.black,),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.black,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.black,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  width: 2.5,
                  color: Colors.red,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  width: 2.5,
                  color: Colors.red,
                ),
              ),
            ),
            validator: (value){
              if(value!.isEmpty){
                return 'Enter The First Value';
              }
            },
          ),
          SizedBox(height: 20,),
          TextFormField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            controller: controller.second,
            decoration: InputDecoration(
              hintText: 'Enter The Second Value',
              hintStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              prefixIcon: Icon(Icons.numbers,size: 25,color: Colors.black,),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.black,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.black,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  width: 2.5,
                  color: Colors.red,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  width: 2.5,
                  color: Colors.red,
                ),
              ),
            ),
            validator: (value){
              if(value!.isEmpty){
                return 'Enter The Second Value';
              }
            },
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: (){

                GetStorage().write('first',  controller.first.text);
                GetStorage().write('second',  controller.second.text);




                Get.offAllNamed('/home');

                // Get.off(()=>Home(),
                //  arguments: 'You have pushed the button this many times:',
                //  transition: Transition.rightToLeft,
                //   curve: Curves.fastEaseInToSlowEaseOut,
                // );
              },
              child: Text("Login")
          ),
        ],
      ),
    );
  }
}
