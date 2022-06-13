import 'package:easysalon_users_app/_shared/intl/generated/l10n.dart';
import 'package:easysalon_users_app/presentation/base/base_viewmodel.dart';
import 'package:easysalon_users_app/presentation/login/domain/usecase/check_vaild.dart';
import 'package:easysalon_users_app/presentation/login/domain/usecase/login_repo_usecase.dart';
import 'package:easysalon_users_app/presentation/login/domain/usecase/save_token.dart';
import 'package:either_dart/either.dart';

import '../domain/repositories/login_repository.dart';

class LoginViewModel extends BaseViewModel {
  late LoginRepository? repository;
  LoginViewModel(LoginRepository repository) {
    this.repository = repository;
  }
  String error = '';
  init() async {}

  login(phoneController, passController) async {
    setLoading(true);
    print(isLoading);
    String mobileNumber = phoneController.text;
    String password = passController.text;
    final useCaseCheckValid = CheckValidUseCase();
    final useCaseSaveToken = LoginSaveTokenUseCase();
    final resultIsEmpty = useCaseCheckValid(
        mobileNumber: mobileNumber.trim(), password: password.trim());
    if (resultIsEmpty) {
      final result = LoginRepoUseCase(repository: repository!)
          .call(mobileNumber: mobileNumber, password: password);
      result.fold((left) {
        new Future.delayed(Duration(seconds: 1), () {
          setLoading(false);
        });
        error = S.current.signInInvalidAccountAndPassword;
      }, (token) {
        if (token.isNotEmpty) {
          new Future.delayed(Duration(seconds: 1), () {
            setLoading(false);
          });
          useCaseSaveToken(token: token);
        }
      });
    } else {
      new Future.delayed(Duration(seconds: 1), () {
        setLoading(false);
      });
      error = S.current.signInPleaseEnterFullInformation;
    }
    notifyListeners();
  }
}
