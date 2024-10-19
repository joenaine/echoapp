import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:echoapp/core/constants/api_constants.dart';
import 'package:echoapp/core/helpers/dio_helper.dart';
import 'package:echoapp/domain/category/category_model.dart';
import 'package:echoapp/domain/post/post_model.dart';
import 'package:echoapp/injection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class PostsRepository {
  DioHelper dioHelper = getIt<DioHelper>();

  Future<Either<String, PostModel?>> getPosts({int? page}) async {
    try {
      final response = await dioHelper
          .get(ApiUrl.listPosts, queryParameters: {"page": page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(PostModel.fromJson(response.data));
      } else {
        return Left('Error: ${response.statusCode}');
      }
    } catch (e) {
      log('Error posts : $e');
      if (e is DioException) {
        return Left('DioError: ${e.message}');
      } else {
        return Left('Error: ${e.toString()}');
      }
    }
  }

  Future<Either<String, PostModel?>> getPostsByCategory(
      {required int id, int? page}) async {
    try {
      final response = await dioHelper.get(ApiUrl.listPosts,
          queryParameters: {"categories": id, "page": page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(PostModel.fromJson(response.data));
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

  Future<Either<String, List<CategoryModel>?>> getPostsFavourite() async {
    try {
      List<CategoryModel>? result = [];
      final response = await dioHelper
          .get(ApiUrl.listPosts, queryParameters: {"is_favorite": true});
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

  Future<Either<String, String>> addPost({required int postId}) async {
    try {
      final response = await dioHelper
          .post(ApiUrl.addFavoritePost, query: {"post_id": postId});
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

  Future<Either<String, String>> removePost({required int postId}) async {
    try {
      final response = await dioHelper
          .delete(ApiUrl.removeFavoritePost, query: {"post_id": postId});
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

  Future<Either<String, PostModel?>> getPostsBySearch(
      {required String search}) async {
    try {
      final response = await dioHelper
          .get(ApiUrl.listPosts, queryParameters: {"search": search});
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(PostModel.fromJson(response.data));
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
}
