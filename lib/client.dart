import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';

import 'cards.dart';
import 'package:http/http.dart' as http;

class CardClient {
  Future<Cards> list() async {
    final response =
        await http.get('https://jjsonplaceholder.appspot.com/cards');
    return compute(parse, response.bodyBytes);
  }

  static Cards parse(Uint8List bodyBytes) {
    var jsonString = utf8.decode(bodyBytes);
    jsonString = "{\"list\" : " + jsonString + "}";
    final map = json.decode(jsonString);
    return Cards.fromJson(map);
  }
}
