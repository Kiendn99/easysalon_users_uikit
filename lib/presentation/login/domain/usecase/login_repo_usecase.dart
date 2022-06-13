import 'package:easysalon_users_app/presentation/login/domain/repositories/login_repository.dart';
import 'package:either_dart/either.dart';
import 'package:mixup/index.dart';

class LoginRepoUseCase {
  LoginRepoUseCase({required this.repository});
  final LoginRepository repository;
  Future<Either<FetchError, String>> call(
      {required String mobileNumber, required String password}) async {
    return repository.loginRepo(mobileNumber: mobileNumber, password: password);
  }
}
