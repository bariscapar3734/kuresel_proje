import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kureselproje_app/api/models/api_model.dart';

Future<List<Gucsirasi>> fetchData() async {
  final response = await http.get(Uri.parse(
      "https://gist.githubusercontent.com/bariscapar3734/18cf7a20fa548a9cfc3ac4c1be62fb73/raw/d6bea32955e4c56caab7cb128101695ce1c055d8/gistfile1.txt"));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Gucsirasi.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}
