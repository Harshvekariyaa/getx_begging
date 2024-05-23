import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstatemanage/getxcontrol.dart';


class screenOne extends StatefulWidget {
  var name;
  screenOne({super.key,  this.name});

  @override
  State<screenOne> createState() => _screenOneState();
}

class _screenOneState extends State<screenOne> {

  final counterController controller = Get.put(counterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Get.arguments.toString()),centerTitle: true,backgroundColor: Colors.blueGrey,),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Center(
          //   child: Container(
          //     height: Get.height * 0.2,
          //     width: Get.width * .4,
          //     color: Colors.blueGrey,
          //   ),
          // ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                child: Card(
                  child: Obx(() {
                    return ListTile(
                      onTap: (){
                        if(controller.tempFruit.contains(controller.fruitItems[index].toString())){
                          controller.deleteFromfav(controller.fruitItems[index].toString());
                        }else{
                          controller.addToFav(controller.fruitItems[index].toString());
                        }
                      },
                      title: Text(controller.fruitItems[index].toString()),
                      trailing: Icon(Icons.favorite,color: controller.tempFruit.contains(controller.fruitItems[index].toString()) ? Colors.red :Colors.white,),
                    );
                  })
                ),
              );
            },
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: TextButton(onPressed: (){
                // Get.to(screenTwo());
                Get.toNamed("/screenTwo");
              }, child: Text("Go to the screen 2")),
            ),
          )
        ],
      ),
    );
  }
}
