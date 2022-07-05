import 'package:dio/dio.dart';

class UserService {
  Dio api() {
    const String url = 'https://jsonplaceholder.typicode.com';
    
    final client = Dio(BaseOptions(baseUrl: url));

    return client;
  }
}
