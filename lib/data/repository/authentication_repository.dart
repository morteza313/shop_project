import 'package:apple_shop/data/dataource/athentication_datasource.dart';
import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/util/api_ecxception.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<String, String>> register(
      String username, String password, String passwordConfirm);

  Future<Either<String, String>> login(
    String identity,
    String password,
  );
}

class AthenticationRepository implements IAuthRepository {
  final IAthenticationDatasource _datasourse = locator.get();

  @override
  Future<Either<String, String>> register(
      String username, String password, String passwordConfirm) async {
    try {
      await _datasourse.register(username, password, passwordConfirm);
      return right('ثبت نام انجام شد');
    } on ApiException catch (e) {
      return left(e.massage ?? 'خطا محتوای متنی ندارد');
    }
  }

  @override
  Future<Either<String, String>> login(String identity, String password) async {
    try {
      String token = await _datasourse.login(identity, password);
      if (token.isNotEmpty) {
        return right('شما وارد شدید');
      } else {
        return left('خطایی در ورود پیش آمده');
      }
    } on ApiException catch (e) {
      return left(e.massage ?? 'null');
    }
  }
}
