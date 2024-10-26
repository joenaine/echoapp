import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:echoapp/core/constants/api_constants.dart';
import 'package:echoapp/core/helpers/dio_helper.dart';
import 'package:echoapp/domain/category/category_model.dart';
import 'package:echoapp/domain/post/item_model.dart';
import 'package:echoapp/domain/post/post_detail_model.dart';
import 'package:echoapp/domain/post/post_model.dart';
import 'package:echoapp/injection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class PostsRepository {
  DioHelper dioHelper = getIt<DioHelper>();

  Future<Either<String, PostModel?>> getPosts({
    int? page,
    Map<String, dynamic>? filters,
  }) async {
    try {
      final response = await dioHelper.get(ApiUrl.listPosts, queryParameters: {
        "page": page,
        ...?filters,
      });
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

  Future<Either<String, PostSingleModel?>> getPostDetail({int? postId}) async {
    try {
      final response = await dioHelper.get('${ApiUrl.getSinglePost}$postId');
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(PostSingleModel.fromJson(response.data));
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

  Future<Either<String, List<Item>?>> getPostsFavourite({int page = 1}) async {
    try {
      final response = await dioHelper.get(
        ApiUrl.listPosts,
        queryParameters: {"is_favorite": true, "page": page},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        // Assume response.data is a list of posts
        final List<Item> posts = (response.data['items'] as List)
            .map((json) => Item.fromJson(json))
            .toList();
        return Right(posts);
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
      {required String search, int? page}) async {
    try {
      final response = await dioHelper.get(ApiUrl.listPosts,
          queryParameters: {"search": search, "page": page});
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
