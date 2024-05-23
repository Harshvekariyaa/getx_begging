import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screenOne.dart';
import '../../../getxcontrol.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final counterController controller = Get.put(counterController());

  @override
  Widget build(BuildContext context) {
    print("rebuild all widgets.");
    return Scaffold(
        appBar: AppBar(title: Text("Get Screen"),centerTitle: true,backgroundColor: Theme.of(context).primaryColorLight),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              child: Card(
                color: Colors.blueGrey.shade50,
                child: ListTile(
                  title: Text("Change Theme",style: TextStyle(color: Colors.blue.shade900,fontSize: 20)),
                  subtitle: Text("(Dark / Light)",style: TextStyle(color: Colors.blue.shade900)),
                  onTap: (){
                    Get.bottomSheet(
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade50,
                          ),
                          child: Column(
                            children: [
                              Card(
                                color: Colors.blueGrey.shade100,
                                child: ListTile(
                                  title: Text("Dark Theme",style: TextStyle(color: Colors.blue.shade900),),
                                  onTap: (){
                                    Get.changeTheme(ThemeData.dark());
                                  },
                                ),
                              ),
                              Card(
                                color: Colors.blueGrey.shade100,
                                child: ListTile(
                                  title: Text("Light Theme",style: TextStyle(color: Colors.blue.shade900),),
                                  onTap: (){
                                    Get.changeTheme(ThemeData.light());
                                  },
                                ),
                              )
                            ],
                          ),
                        )
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              child: Card(
                color: Colors.blueGrey.shade50,
                child: ListTile(
                  title: Text("Hey Everyone",style: TextStyle(color: Colors.blue.shade900,fontSize: 20)),
                  subtitle: Text("This is getx test app.",style: TextStyle(color: Colors.blue.shade900)),
                  onTap: (){
                    Get.defaultDialog(
                      backgroundColor: Colors.blueGrey.shade100,
                      cancel: TextButton(onPressed: (){Get.back();}, child: Text("Cancel")),
                      title: "Delete",
                      titlePadding: EdgeInsets.all(10),
                      buttonColor: Colors.blue.shade900,
                      content: Text("Are you sure you want to delete?"),
                      confirm: TextButton(onPressed: (){Get.back();}, child: Text("Confirm"))
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.purple[50],
                child: TextButton(onPressed: (){
                  // Get.to(screenOne());
                  Get.toNamed("/screenOne",arguments: ['Hello world']);
                }, child: Text("Go to Screen 1")),
              ),
            ),


            //increment value (state management)
            Center(
              child: Container(
                height: Get.height * .2,
                width: Get.width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx((){
                      print("rebuild Text Widget");
                      return Text(controller.cnt.toString(),style: TextStyle(color: Colors.black,fontSize: 26));
                    }),
                    SizedBox(height: 4,),
                    FloatingActionButton(onPressed: (){

                      controller.incrementCounter();
                    },child: Icon(Icons.add),backgroundColor: Colors.blueGrey[500],)
                  ],
                ),
              ),
            ),

            SizedBox(height: 20,),

            
            //CONTROL CONTAINER COLOR OPACITY
            Center(
              child: Obx((){
                return  Container(
                  height: Get.height * .2,
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(controller.opacity.value),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Obx(() {
                        return Slider(
                            value: controller.opacity.value,
                            onChanged: (value){
                              controller.setOpacity(value);
                        });
                      }),

                    ],
                  ),
                );
              }),
            )
          ],
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueGrey.shade50,
          child: Icon(Icons.notification_add_sharp,color: Colors.blue.shade900,),
          onPressed: (){
            Get.snackbar(
                "Harsh Vekariya",
                "This is a simple notification or snackbar for display message.",
                backgroundColor: Theme.of(context).primaryColorLight,
                colorText: Colors.blue.shade900,
                snackPosition: SnackPosition.BOTTOM
            );
          },
        ),
    );
  }
}
