import 'package:get/get.dart';
import 'package:getxstatemanage/statemanage/res/routes/routes_name.dart';
import 'package:getxstatemanage/statemanage/view/ExtraViews/homescreen.dart';
import 'package:getxstatemanage/statemanage/view/ExtraViews/screenOne.dart';
import 'package:getxstatemanage/statemanage/view/ExtraViews/screenTwo.dart';
class Approutes{
  static appRoutes() => [
    GetPage(
        name: routes_name.homeScreen, page: () => HomeScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)
    ),
    GetPage(
        name: routes_name.screenOne, page: () => screenOne(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)
    ),
    GetPage(
        name: routes_name.screenTwo, page: () => screenTwo(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 250)
    ),

  ];
}