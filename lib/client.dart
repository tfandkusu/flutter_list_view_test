import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';

import 'card.dart';
import 'package:http/http.dart' as http;

class CardClient {
  Future<Card> list() async {
    final response =
        await http.get('https://jjsonplaceholder.appspot.com/cards/1');
    return compute(parse, response.bodyBytes);
  }

  static Card parse(Uint8List bodyBytes) {
    final jsonString = utf8.decode(bodyBytes);
    final map = json.decode(jsonString);
    return Card.fromJson(map);
  }
}
