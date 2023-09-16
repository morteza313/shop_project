import 'package:apple_shop/data/dataource/category_datasource.dart';
import 'package:apple_shop/data/model/category.dart';
import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/util/api_ecxception.dart';
import 'package:dartz/dartz.dart';

abstract class ICategoryRepository {
  Future<Either<String, List<Category>>> getCategories();
}

class CategoryRepository extends ICategoryRepository {
  final ICategoryDatasource _datasource = locator.get();
  @override
  Future<Either<String, List<Category>>> getCategories() async {
    try {
      var response = await _datasource.getCategories();
      return right(response);
    } on ApiException catch (e) {
      return left(e.massage ?? 'خطا محتوای متنی ندارد');
    }
  }
}
