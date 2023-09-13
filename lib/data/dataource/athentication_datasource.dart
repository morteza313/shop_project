import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/util/api_ecxception.dart';
import 'package:dio/dio.dart';

abstract class IAthenticationDatasource {
  Future<void> register(
      String username, String password, String passwordConfirm);

  Future<String> login(String identity, String password);
}

class AthenticationRemote implements IAthenticationDatasource {
  final Dio _dio = locator.get();

  @override
  Future<void> register(
      String username, String password, String passwordConfirm) async {
    try {
      final response = await _dio.post('collections/users/records', data: {
        'username': username,
        'password': password,
        'passwordConfirm': passwordConfirm,
      });
    } on DioError catch (ex) {
      throw ApiException(ex.response?.statusCode, ex.response?.data['massage']);
    } catch (e) {
      throw ApiException(0, 'Unknown Error');
    }
  }

  @override
  Future<String> login(String identity, String password) async {
    try {
      final response =
          await _dio.post('collections/users/auth-with-password', data: {
        'identity': identity,
        'password': password,
      });
      if (response.statusCode == 200) {
        return response.data['token'];
      }
    } on DioError catch (ex) {
      throw ApiException(ex.response?.statusCode, ex.response?.data['massage']);
    } catch (e) {
      throw ApiException(0, 'Unknown Error');
    }
    return '';
  }
}
