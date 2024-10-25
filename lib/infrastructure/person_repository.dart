import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:echoapp/core/constants/api_constants.dart';
import 'package:echoapp/core/helpers/dio_helper.dart';
import 'package:echoapp/domain/category/category_model.dart';
import 'package:echoapp/injection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class PersonRepository {
  DioHelper dioHelper = getIt<DioHelper>();

  Future<Either<String, List<CategoryModel>?>> getPersonalities(
      {String? search, int? page}) async {
    try {
      List<CategoryModel>? result = [];
      final response = await dioHelper.get(
        ApiUrl.listPersonalities,
        queryParameters: {
          if (search != null && search.isNotEmpty) 'search': search,
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        CategoryModel subscribesModel;
        List<dynamic> l = response.data["items"];
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

  Future<Either<String, List<CategoryModel>?>>
      getPersonalitiesFavourite() async {
    try {
      List<CategoryModel>? result = [];
      final response = await dioHelper
          .get(ApiUrl.listPersonalities, queryParameters: {"favorite": true});
      if (response.statusCode == 200 || response.statusCode == 201) {
        CategoryModel subscribesModel;
        List<dynamic> l = response.data["items"];
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

  Future<Either<String, String>> addPerson({required int categoryId}) async {
    try {
      final response = await dioHelper.post(ApiUrl.addFavoritePersonality,
          query: {"personality_id": categoryId});
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

  Future<Either<String, String>> removePerson({required int categoryId}) async {
    try {
      final response = await dioHelper.delete(ApiUrl.removeFavoritePersonality,
          query: {"personality_id": categoryId});
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
