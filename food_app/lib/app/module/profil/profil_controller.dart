
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import '../../data/model.dart';

class ProfilController extends GetxController {

  Future<User> getUser(int? id) async {
    print(id);
    final url =
    Uri.parse("https://reqres.in/api/users/$id");
    final response = await http.get(url);

  print(response.body);
    return User.fromJson(json.decode(response.body)['data']);
  }
}