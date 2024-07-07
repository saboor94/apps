import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  String baseurl = 'https://jsonplaceholder.typicode.com/users';

  getusersData() async {
    var url = Uri.parse(baseurl);
    var response = await http.get(url);
    var users = jsonDecode(response.body);
    return users;
  }

  getuserdatabyId(id) async {
    print(id);
    var url = Uri.parse('$baseurl/$id');
    var response = await http.get(url);
    var users = jsonDecode(response.body);
    return users;
  }

  postUserData(data) async {
    var url = Uri.parse(baseurl);
    var response = await http.post(url, body: data);
    var users = jsonDecode(response.body);
    return users;
  }
}
