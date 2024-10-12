import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:echoapp/core/constants/api_constants.dart';
import 'package:echoapp/core/constants/constant_variables.dart';
import 'package:echoapp/core/helpers/dio_helper.dart';
import 'package:echoapp/core/local_storage.dart';
import 'package:echoapp/domain/user/user_model.dart';
import 'package:echoapp/injection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AuthRepository {
  DioHelper dioHelper = getIt<DioHelper>();

  Future<Either<String, bool>> register({required UserModel userModel}) async {
    try {
      final response =
          await dioHelper.post(ApiUrl.registerUser, data: userModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        await LocalStorage.instance.add(accessTokenKey, response.data["token"]);

        return const Right(true);
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

  Future<Either<String, bool>> login(
      {required String phoneNumber, required String password}) async {
    try {
      final response = await dioHelper.post(ApiUrl.loginUser,
          data: {"username": phoneNumber, "password": password});
      if (response.statusCode == 200 || response.statusCode == 201) {
        await LocalStorage.instance.add(accessTokenKey, response.data["token"]);

        return const Right(true);
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
