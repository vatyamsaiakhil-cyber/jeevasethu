import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://your-api-url.com";

  Future createRequest(Map<String, dynamic> data) async {
    final response = await http.post(
      Uri.parse("$baseUrl/createRequest"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(data),
    );

    return jsonDecode(response.body);
  }
}