import 'package:chap3_flutter/access.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'access.dart';

class OnlineServices {
  Future<Person> loadPerson() async {
    final response = await http
        .get(Uri.parse('https://jsonguide.technologychannel.org/info.json'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return Person.fromJson(jsonResponse);
    } else {
      throw Exception('error in the data processing ');
    }
  }
}
