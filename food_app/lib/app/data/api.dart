import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app/app/data/model.dart';

class ApiService {
  Future fetchUser() async {
    final url = Uri.parse("https://reqres.in/api/users");
    final response = await http.get(url);
    List<User> allEmploy = [];
    List body = json.decode(response.body)['data'];
    print(body);
    for (var employ in body) {
      allEmploy.add(User.fromJson(employ));
    }
    return allEmploy;
  }


}
