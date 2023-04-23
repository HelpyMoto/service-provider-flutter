import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> createUser(String firstName, String lastName, String phoneNo,
    String email, String password) async {
  var url = Uri.parse(
      'https://service-provider-apis.onrender.com/api/v1/mechanic/signup');
  var body = jsonEncode({
    'firstName': firstName,
    'lastName': lastName,
    'phoneNo': phoneNo,
    'email': email,
    'password': password,
  });

  var response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: body,
  );

  if (response.statusCode == 201) {
    print('User created successfully');
  } else if (response.statusCode == 400) {
    print('Failed to create user. Error code: ${response.statusCode}');
    var jsonResponse = jsonDecode(response.body);
    print('Error message: ${jsonResponse['message']}');
  } else {
    print('Unexpected error. Error code: ${response.statusCode}');
  }
}
