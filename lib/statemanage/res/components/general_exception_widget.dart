import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstatemanage/statemanage/res/appColor.dart';


class generalExceptionWidget extends StatefulWidget {
  final VoidCallback onpress;
  const generalExceptionWidget({super.key,required this.onpress});

  @override
  State<generalExceptionWidget> createState() => _generalExceptionWidgetState();
}

class _generalExceptionWidgetState extends State<generalExceptionWidget> {


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud_off,size: 50,color: appColor.redColor),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text('generalException_Text'.tr,textAlign: TextAlign.center))
            ),
            InkWell(
              onTap: widget.onpress,
              child: Container(
                height: height * 0.06,
                width: width * 0.09,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text("Retry",style: TextStyle(fontSize: 16,color: appColor.whiteColor))),
              ),
            )

          ],
        ),
      ),
    );
  }
}
