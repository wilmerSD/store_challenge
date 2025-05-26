import 'dart:convert';
import 'package:app_market_challenge/app/models/request/login_request.dart';
import 'package:app_market_challenge/app/models/request/register_user_request.dart';
import 'package:app_market_challenge/app/models/response/auth_validation_response.dart';
import 'package:app_market_challenge/app/models/response/register_user_response.dart';
import 'package:http/http.dart' as http;

class RepositoryGeneral {
  String routeDev = 'https://backend-store-challenge.vercel.app/api/';//'http://localhost:3000/api/';
  String routeQa = 'https://backend-store-challenge.vercel.app/api/';
  String routeProd = '';

  Future<RegisterUserResponse> registerUser(RegisterUserRequest request) async {
    final url = Uri.parse(
      '${routeDev}auth/register',
    );

    final response = await http.post(url, body: request.toJson());

    if (response.statusCode == 201) {
      final  data = jsonDecode(response.body);
      return RegisterUserResponse.fromJson(data);
    } else {
      throw Exception('Error: ${response.statusCode} - ${response.body}');
    }
  }

  Future<AuthValidationResponse> postLogin(LoginRequest request) async {
    final url = Uri.parse(
      '${routeDev}auth/login',
    );

    final response = await http.post(url, body: request.toJson());

    if (response.statusCode == 200) {
      final  data = jsonDecode(response.body);
      return AuthValidationResponse.fromJson(data);
    } else {
      throw Exception('Error: ${response.statusCode} - ${response.body}');
    }
  }

}
