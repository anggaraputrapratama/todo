import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/data_error.dart';
import '../models/todo.dart';

class TodoRepository {
  static const _baseurl = "https://mvp.ciheul.com/ciheul-todo-test/todo/";

  static Future<List<ToDo>> getTodosNotYet() async {
    const requestUrl = '${_baseurl}list/not-yet';

    try {
      final response = await http.Client().get(Uri.parse(requestUrl));

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        final data = json['data']['todo'] as List<dynamic>;

        return data.map((e) => ToDo.fromMap(e)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (err) {
      throw DataError(message: err.toString());
    }
  }

  static Future<List<ToDo>> getTodosDone() async {
    const requestUrl = '${_baseurl}list/done';

    try {
      final response = await http.Client().get(Uri.parse(requestUrl));

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        final data = json['data']['todo'] as List<dynamic>;

        return data.map((e) => ToDo.fromMap(e)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (err) {
      throw DataError(message: err.toString());
    }
  }

  static Future<List<ToDo>> getTodoCreate(
      String todoText, String belong) async {
    const requestUrl = '${_baseurl}create';

    try {
      final response = await http.Client().get(Uri.parse(requestUrl));

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        final data = json['data']['todo'] as List<dynamic>;

        return data.map((e) => ToDo.fromMap(e)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (err) {
      throw DataError(message: err.toString());
    }
  }
}
