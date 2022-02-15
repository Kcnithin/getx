import 'package:getx_ex/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class UserService{
  final String _url = 'jsonplaceholder.typicode.com';

  Future<List<User>> getUsers() async{

    final url = Uri.https(_url, '/users');
    final response = await http.get(url);

    final List<dynamic> decodedData = convert.jsonDecode(response.body);
    return decodedData.map((e) => User.fromJson(e)).toList();
  }
}