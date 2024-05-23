import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:getxstatemanage/statemanage/data/app_exception.dart';
import 'package:getxstatemanage/statemanage/data/network/base_api_service.dart';
import 'package:http/http.dart' as http;

class network_api_service extends baseApiClass{

  Future<dynamic> getApi(String url) async{

    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url)).timeout(
          Duration(seconds: 10));
      responseJson =  returnResponse(response);

    }on SocketException{
      throw InternetException();
    }on RequestTimeOut{
      throw RequestTimeOut("");
    }

  }

  Future<dynamic> postApi(var data,String url) async{

    if (kDebugMode) {
      print(url);
      print(data);
    }

    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(url),
        body: jsonEncode(data)
      ).timeout(
          Duration(seconds: 10));
      responseJson = returnResponse(response);

    }on SocketException{
      throw InternetException();
    }on RequestTimeOut{
      throw RequestTimeOut("");
    }

  }

  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrlException();
      default:
        throw FetchDataException("  >>>> "+response.statusCode.toString());
    }
  }


}