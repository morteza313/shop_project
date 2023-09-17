import 'package:apple_shop/data/model/banner.dart';
import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/util/api_ecxception.dart';
import 'package:dio/dio.dart';

abstract class IBannerDatasource {
  Future<List<BannerCampain>> getBanners();
}

class BannerRemoteDatasource extends IBannerDatasource {
  final Dio _dio = locator.get();
  @override
  Future<List<BannerCampain>> getBanners() async {
    var response = await _dio.get('collections/banner/records');
    try {
      return response.data['items']
          .map<BannerCampain>(
              (jsonObject) => BannerCampain.fromMapJson(jsonObject))
          .toList();
    } on DioError catch (ex) {
      throw ApiException(ex.response?.statusCode, ex.response?.data['massage']);
    } catch (e) {
      throw ApiException(0, 'Unknown Error');
    }
  }
}
