import 'package:flutter/material.dart';
import 'package:getxstatemanage/statemanage/res/appColor.dart';

class custom_button extends StatelessWidget {


  const custom_button({
    Key? key,
    required this.onpress,
    this.loading = false,
    required this.title,
    this.height = 50,
    this.width = 60,
    this.txtcolor = Colors.white,
    this.bgcolor = Colors.blue
  });

  final VoidCallback onpress;
  final bool loading;
  final String title;
  final double height, width;
  final Color txtcolor, bgcolor;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(20),

        ),
        child: Center(child: loading ? CircularProgressIndicator() : Text(title,style: TextStyle(fontSize: 14,color: txtcolor,))),
      ),
    );
  }
}
