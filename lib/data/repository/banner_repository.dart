import 'package:apple_shop/data/dataource/banner_datasource.dart';
import 'package:apple_shop/data/model/banner.dart';
import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/util/api_ecxception.dart';
import 'package:dartz/dartz.dart';

abstract class IBannerRepository {
  Future<Either<String, List<Banner>>> getBanners();
}

class BannerRepository extends IBannerRepository {
  @override
  Future<Either<String, List<Banner>>> getBanners() async {
    final IBannerDatasource _datasource = locator.get();
    try {
      var response = await _datasource.getBanners();
      return right(response);
    } on ApiException catch (e) {
      return left(e.massage ?? 'خطا محتوای متنی ندارد');
    }
  }
}
