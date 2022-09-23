import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'package:alice/alice.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:http_parser/http_parser.dart';

import '../../config/strings.dart';
import '../../utils/prefs.dart';
import 'package:async/async.dart';

import 'api_constant.dart';

part 'api_exception.dart';

part 'api_handler.dart';

class Api {
  static final ApiHandler _handler = ApiHandler();

  static Future loginUser(String noHp, String password, String deviceToken) async {
    return await _handler.post(
        ApiUrl.loginUrl,
        {'username': noHp, 'password': password, 'device_token': deviceToken},
        "");
  }

  static Future getGenre() async {
    return await _handler.getWithoutToken(ApiUrl.genreUrl);
  }
}
