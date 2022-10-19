import 'package:eflutter/configs/iu_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class Controller2 extends GetxController {
  Color banner2 = Colors.white;
  String current = '';
  late DateTime date;
  String dob = 'Date of Birth';

  setDefault(int val) {
    switch (val) {
      case 1:
        current = 'Username';
        update();
        break;
      case 2:
        current = 'Password';
        update();
        break;
      case 3:
        current = 'Address';
        update();
        break;
      default:
        current = '';
        update();
    }
  }

  urlLauncher() async {
    Uri url = Uri.parse('https://pub.dev/');
    if (!await launchUrl(url)) throw 'Could not load $url';
  }

  pickDate(BuildContext context) async {
    date = (await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        builder: (context, child) {
          return Theme(
            data: mythemeData,
            child: child!,
          );
        }))!;
    dob = DateFormat('EE, dd MM yyyy HH:mm').format(date).toString();
    update();
  }
}
