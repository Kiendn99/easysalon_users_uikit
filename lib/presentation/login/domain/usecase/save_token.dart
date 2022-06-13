import 'package:easysalon_users_app/_shared/services/services.dart';

class LoginSaveTokenUseCase {
  call({required String token}) {
    if (token.isEmpty || token.length < 0 || token == "") {
      return null;
    } else {
      AppPref.accessToken = token;
    }
  }
}
