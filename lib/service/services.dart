import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Services{

  Future<void> sendMessage(BuildContext context, String title,String bodyMessage, String reciver )async{
    var response = await http.post(
      Uri.parse('https://www.bulksmsnigeria.com/api/v1/sms/create'),
    //   headers: {
    //   "Accept: application/json",
    //   "Content-Type: application/json"
    // },
        body: jsonEncode({
      {
        "body": bodyMessage,
        "from": title,
        "to": reciver,
        "api_token": "6uOXbVl2xncJHMQ08My3ptetBBiYUWCacscZd2sC4yqQ7yKWAPKjus93AFQIXq5",
        "gateway": "direct-refund"
      }
    }));
    if(response.statusCode==200){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Message Set')));
      print(response.body.toString());
    }
  }
}