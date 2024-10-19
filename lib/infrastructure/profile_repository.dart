import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:echoapp/core/constants/api_constants.dart';
import 'package:echoapp/core/helpers/dio_helper.dart';
import 'package:echoapp/domain/post/post_model.dart';
import 'package:echoapp/domain/profile/profile_model.dart';
import 'package:echoapp/injection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ProfileRepository {
  DioHelper dioHelper = getIt<DioHelper>();

  Future<Either<String, ProfileModel?>> getProfile() async {
    try {
      final response = await dioHelper.get(ApiUrl.profile);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(ProfileModel.fromJson(response.data['profile']));
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
