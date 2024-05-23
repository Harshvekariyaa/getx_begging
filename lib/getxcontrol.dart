import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class counterController extends GetxController{
  RxInt cnt = 1.obs;

  RxDouble opacity = .4.obs;

  RxList<String> fruitItems = ['apples','banana','cherry','mango','xyz'].obs;
  RxList tempFruit = [].obs;

  final emailCon = TextEditingController().obs;
  final passwordcCon = TextEditingController().obs;
  RxBool loading = true.obs;

  incrementCounter(){
    cnt.value++;
    print(cnt.value);
  }


  setOpacity(double val){
    opacity.value = val;
  }


  addToFav(String value){
    tempFruit.add(value);
  }
  deleteFromfav(String value){
    tempFruit.remove(value);
  }


  void logIn() async{

    try{
      final response = await http.post(Uri.parse('https://reqres.in/api/login'),
          body: {
            'email' : emailCon.value.text,
            'password' : passwordcCon.value.text
          });

      var data = jsonDecode(response.body);
      print(response.statusCode);
      if(response.statusCode == 200){
        Get.snackbar("Scusscefully", "Log in Sucess...!!");
      }else{
        Get.snackbar("Failed", "Login Failed!");
      }
    }catch(ex){
      Get.snackbar("Error", ex.toString());
    }

  }
}