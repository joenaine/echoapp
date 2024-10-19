import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:echoapp/core/constants/api_constants.dart';
import 'package:echoapp/core/helpers/dio_helper.dart';
import 'package:echoapp/domain/category/category_model.dart';
import 'package:echoapp/domain/channel/channel_model.dart';
import 'package:echoapp/domain/post/post_model.dart';
import 'package:echoapp/injection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ChannelsRepository {
  DioHelper dioHelper = getIt<DioHelper>();

  Future<Either<String, List<ChannelModel>?>> getChannels(
      {int? page = 1}) async {
    try {
      List<ChannelModel>? result = [];
      final response = await dioHelper
          .get(ApiUrl.listChannels, queryParameters: {"page": page});
      if (response.statusCode == 200 || response.statusCode == 201) {
        ChannelModel channelModel;
        List<dynamic> l = response.data['items'];
        for (var m in l) {
          channelModel = ChannelModel.fromJson(m);
          result.add(channelModel);
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

  Future<Either<String, PostModel?>> getPostsByCategory(
      {required int id}) async {
    try {
      final response = await dioHelper
          .get(ApiUrl.listPosts, queryParameters: {"categories": id});
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

  Future<Either<String, List<ChannelModel>?>> getChannelsFavourite() async {
    try {
      List<ChannelModel>? result = [];
      final response = await dioHelper
          .get(ApiUrl.listChannels, queryParameters: {"favorite": true});
      if (response.statusCode == 200 || response.statusCode == 201) {
        ChannelModel subscribesModel;
        List<dynamic> l = response.data['items'];
        for (var m in l) {
          subscribesModel = ChannelModel.fromJson(m);
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

  Future<Either<String, String>> addChannel({required int channelId}) async {
    try {
      final response = await dioHelper
          .post(ApiUrl.addFavoriteChannel, query: {"channel_id": channelId});
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

  Future<Either<String, String>> removeChannel({required int postId}) async {
    try {
      final response = await dioHelper
          .delete(ApiUrl.removeFavoriteChannel, query: {"channel_id": postId});
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
