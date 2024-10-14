import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:echoapp/core/constants/api_constants.dart';
import 'package:echoapp/core/helpers/dio_helper.dart';
import 'package:echoapp/domain/category/category_model.dart';
import 'package:echoapp/injection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CategoriesRepository {
  DioHelper dioHelper = getIt<DioHelper>();

  Future<Either<String, List<CategoryModel>?>> getCategories() async {
    try {
      List<CategoryModel>? result = [];
      final response = await dioHelper.get(ApiUrl.listCategories);
      if (response.statusCode == 200 || response.statusCode == 201) {
        CategoryModel subscribesModel;
        List<dynamic> l = response.data;
        for (var m in l) {
          subscribesModel = CategoryModel.fromJson(m);
          result.add(subscribesModel);
        }
        return Right(result);
      } else {
        return Left('Error: ${response.statusCode}');
      }
    } catch (e) {
      if (e is DioException) {
        return Left('DioError: ${e.message}');
      } else {
        return Left('Error: ${e.toString()}');
      }
    }
  }

  Future<Either<String, String>> addCategory({required int categoryId}) async {
    try {
      final response = await dioHelper
          .post(ApiUrl.addFavoriteCategory, query: {"category_id": categoryId});
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(response.data['message']);
      } else {
        return Left('Error: ${response.statusCode}');
      }
    } catch (e) {
      if (e is DioException) {
        return Left('${e.response?.data['error']}');
      } else {
        return Left('Error: ${e.toString()}');
      }
    }
  }

  Future<Either<String, String>> removeCategory(
      {required int categoryId}) async {
    try {
      final response = await dioHelper.delete(ApiUrl.removeFavoriteCategory,
          query: {"category_id": categoryId});
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(response.data['message']);
      } else {
        return Left('Error: ${response.statusCode}');
      }
    } catch (e) {
      if (e is DioException) {
        return Left('${e.response?.data['error']}');
      } else {
        return Left('Error: ${e.toString()}');
      }
    }
  }
}
