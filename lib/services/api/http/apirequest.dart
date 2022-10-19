import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;

const String domainURL = 'https://api.npoint.io/';

//final String baseURL = '';

Future requestAPIGet({required String resource}) async {
  String requestURL = '$domainURL$resource';

  http.Response response = await http.get(
    Uri.parse(requestURL),
    headers: {HttpHeaders.contentTypeHeader: 'application/json'},
  );

  if (response.statusCode == 200) {
    log(response.body.toString());
    return response.body;
  } else {
    return '$resource api call failed!';
  }
}
