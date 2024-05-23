import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstatemanage/getxcontrol.dart';

class  screenTwo extends StatefulWidget {
  const screenTwo({super.key});

  @override
  State<screenTwo> createState() => _screenTwoState();
}

class _screenTwoState extends State<screenTwo> {
  final counterController controller = Get.put(counterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second screen",),centerTitle: true,backgroundColor: Colors.blueGrey,),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextField(
            controller: controller.emailCon.value,
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            controller: controller.passwordcCon.value,
            decoration: InputDecoration(
              hintText: "password",
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),
          Obx((){
            return ElevatedButton(onPressed: (){
              controller.logIn();
            }, child:Text("Log in"));
          }),
          Center(
            child: TextButton(onPressed: (){
              Get.back();
              Get.back();
            }, child: Text("Back to the screen")),
          )
        ],
      ),
    );
  }
}
