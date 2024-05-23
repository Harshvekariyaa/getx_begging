import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstatemanage/statemanage/res/components/internet_exception_widget.dart';
import 'package:getxstatemanage/statemanage/res/getxx_localization/languageclass.dart';
import 'package:getxstatemanage/statemanage/res/routes/routes.dart';
import 'package:getxstatemanage/statemanage/view/ExtraViews/homescreen.dart';
import 'statemanage/view/ExtraViews/screenOne.dart';
import 'statemanage/view/ExtraViews/screenTwo.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: languageclass(),
      locale: Locale("en","US"),
      fallbackLocale: Locale("en","US"),
      title: 'Flutter Demo'.tr,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),

      getPages: [
        // GetPage(name: "/homescreen", page: () => HomeScreen()),
        // GetPage(name: "/screenOne", page: () => screenOne()),
        // GetPage(name: "/screenTwo", page: () => screenTwo())

        Approutes.appRoutes()
      ],
    );
  }
}
