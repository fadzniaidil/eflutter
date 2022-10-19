import 'dart:developer';

import 'package:eflutter/model/model.dart';
import 'package:eflutter/services/api/http/apirequest.dart';

import 'package:eflutter/tempdata.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller1 extends GetxController {
  bool invi = false;
  String a = 'title';
  String b = 'hai';
  Color banner = Colors.red;

  bool isLoad = false;

  get modalData => getApiData();

  PageController? pgcontroller;

  funcClick(int val) {
    log('$val box clicked');
  }

  getToken() async {
    var token = await FirebaseMessaging.instance.getToken();
    log(token.toString());
  }

  chnageBanner() {
    banner = Colors.green;
    update();
  }

  changeText() {
    b = 'tilte dah ubah';
    update();
  }

  changeText2() {
    a = 'huhuhu';
    update();
  }

  getApiData() async {
    isLoad = true;
    update();
    try {
      modelData = modelDataFromJson(
          await requestAPIGet(resource: 'd5dba2c022019aefb70c'));
      isLoad = false;
    } catch (e) {
      log('error: $e');
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getToken();
    getApiData();
  }
}
