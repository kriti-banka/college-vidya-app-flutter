import 'dart:convert';
import 'package:collegevidya/models/user%20model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

//GENERATE OTP
Future<String> generateOTP(String mobile) async {
  final url = 'https://admin.collegevidya.com/otp/';
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({'mobile': mobile});

  final response = await http.post(Uri.parse(url), headers: headers, body: body);

  if (response.statusCode == 200) {
    final jsonResponse = jsonDecode(response.body);
    final otp = jsonResponse['otp']; // Extract the OTP from the API response
    return otp;
  } else {
    throw Exception('Failed to generate OTP');
  }
}

//GENERATE TOKEN
Future<Map<String, String>> verifyOTP(String mobile, String otp) async {

  final url = 'https://admin.collegevidya.com/user_login/';
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({'mobile':mobile});

  final response = await http.post(Uri.parse(url), headers: headers, body: body);
  if (response.statusCode == 200) {
    final jsonResponse = jsonDecode(response.body);
    final jwt = jsonResponse['jwt']; // Extract the jwt token
    final refresh = jsonResponse['refresh']; // Extract the refresh token
    final user_id = jsonResponse['user_id']; // Extract the user_id

    // Extract the token from the API response
    return {'jwt': jwt, 'refresh': refresh, 'user_id': user_id};
  } else {
    throw Exception('OTP verification failed');
  }
}

//SEND LEADS

Future<String?> leadForm(String user_id,String name, String dob, String gender, String mobile, String state,String city, String email, String course,String selected_country) async {
  // Define the API endpoint URL
  final String url = 'https://admin.collegevidya.com/leads/';
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'user_id' : user_id ?? '-1',
    'name': name,
    'dob' : dob,
    'gender' : gender,
    'mobile': mobile,
    'state' : state,
    'city' : city,
    'email': email,
    'course' : course,
    'specializations': "",
    'selected_country' : selected_country
  });

  try {
    final response = await http.post(Uri.parse(url),  headers: headers, body: body);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final user_id = jsonResponse['user_id'];
      return user_id;

    } else {
      print('Request failed with status 4: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
  // return null;
}

// GET USER
Future<UserData> fetchUserDetails(String jwt) async {
  final url = 'https://admin.collegevidya.com/user/';
  final headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $jwt',
  };
  final response = await http.get(Uri.parse(url), headers: headers);

  if (response.statusCode == 200) {
    final userData = jsonDecode(response.body);
    print(userData);
    return UserData.fromJson(userData);

    // Process the user details from the jsonResponse
  } else {
    throw Exception('Failed to fetch user data');
  }
}

//TOKEN REFRESH
Future<Map<String, String>> fetchRefreshToken(String token, String userid) async {

  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? jwt = prefs.getString('jwt');
  String? refresh = prefs.getString('refresh');

  final url = 'https://admin.collegevidya.com/token_refresh_user/';
  final headers = {
    'Content-Type': 'application/json',
  };
  final body = jsonEncode({'token':jwt,'userid':userid});

  final response = await http.post(Uri.parse(url), headers: headers, body: body);

  if (response.statusCode == 200) {
    final jsonResponse = jsonDecode(response.body);
    prefs.setString('jwt', jsonResponse['jwt']);
    prefs.setString('refresh', jsonResponse['refresh']);

    final message = jsonResponse['message'];
    final jwt = jsonResponse['jwt'];
    final refresh = jsonResponse['refresh'];
    return {'jwt': jwt, 'refresh': refresh, 'message' : message};
    // Process the user details from the jsonResponse
  } else {
    throw Exception('Failed to refresh access token');
  }
}








