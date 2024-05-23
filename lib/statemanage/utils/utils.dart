import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getxstatemanage/statemanage/res/appColor.dart';

class utils{
  static toastMsgBottom(String msg){
    Fluttertoast.showToast(msg: msg,backgroundColor: appColor.blackColor,textColor: appColor.whiteColor,gravity: ToastGravity.BOTTOM);
  }
  static toastMsgCenter(String msg){
    Fluttertoast.showToast(msg: msg,backgroundColor: appColor.blackColor,textColor: appColor.whiteColor,gravity: ToastGravity.CENTER);
  }
  static snackBarTop(String title,String msg){
    Get.snackbar(title, msg,backgroundColor: appColor.blackColor,snackPosition: SnackPosition.TOP,colorText: appColor.whiteColor);
  } 
}