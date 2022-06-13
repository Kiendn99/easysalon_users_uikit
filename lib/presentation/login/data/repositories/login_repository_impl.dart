import 'package:easysalon_users_app/presentation/login/domain/repositories/login_repository.dart';
import 'package:easysalon_users_app/rest_api/resources/auth/index.dart';
import 'package:either_dart/either.dart';
import 'package:mixup/helpers/fetch_constants.dart';

class LoginRepositoryImpl extends LoginRepository {
  @override
  Future<Either<FetchError, String>> loginRepo(
      {required String mobileNumber, required String password}) async{
    return await AuthApi.createToken(
        CreateTokenBody(mobileNumber: mobileNumber, password: password));
  }
}
