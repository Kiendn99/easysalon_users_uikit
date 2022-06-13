import 'package:get_storage/get_storage.dart';
import 'package:rxdart/rxdart.dart';

class _Constant {
  _Constant._();
  static const String nameAppPref = 'AppPref';
  static const String localeLanguage = 'locale';
  static const String defaultLanguage = 'defaultLanguage';
  static const String keyUser = 'user';
  static const String accessToken = 'accessToken';
  static const String defaultAccessToken = 'defaultAccessToken';

  static const String themeMode = 'themeMode';
}

class AppPref {
  AppPref._();

  static final GetStorage _box = GetStorage(_Constant.nameAppPref);

  static final BehaviorSubject _userBehavior = BehaviorSubject<dynamic>();

  static initListener() async {
    await GetStorage.init(_Constant.nameAppPref);
    // _box.writeIfNull('themeMode', 'a');
    _box.writeIfNull(_Constant.localeLanguage, _Constant.defaultLanguage);
    _box.writeIfNull(_Constant.accessToken, _Constant.defaultAccessToken);
    _box.listenKey(_Constant.keyUser, (user) {
      _userBehavior.add(user);
    });
  }

  static set accessToken(String? token) =>
      _box.write(_Constant.accessToken, token);
  static String? get accessToken => _box.read(_Constant.accessToken);
  static set themeMode(String themeMode) =>
      _box.write(_Constant.themeMode, themeMode);
  static String get themeMode => _box.read(_Constant.themeMode);
  static set isCheckLocale(String locale) =>
      _box.write(_Constant.localeLanguage, locale);
  static String get isCheckLocale => _box.read(_Constant.localeLanguage);
  static Stream get watchUser => _userBehavior.stream;
}
