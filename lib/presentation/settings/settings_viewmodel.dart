import 'package:easysalon_users_app/presentation/base/base_viewmodel.dart';
import 'package:flutter/material.dart';

import '../../_shared/intl/generated/l10n.dart';
import '../../_shared/services/services.dart';

class _Contants {
  static const String languageVietName = 'vi';
  static const String countryVietName = 'VN';
  static const String languageEnglish = 'en';
  static const String countryEnglish = 'US';
}

class SettingsViewModel extends BaseViewModel {
  init() async {}

  void setLocale(String language) async {
    if (language == _Contants.languageVietName) {
      S.load(Locale(_Contants.languageVietName, _Contants.countryVietName));
      AppPref.isCheckLocale = _Contants.languageVietName;
    } else if (language == _Contants.languageEnglish) {
      S.load(Locale(_Contants.languageEnglish, _Contants.countryEnglish));
      AppPref.isCheckLocale = _Contants.languageEnglish;
    }
    notifyListeners();
  }
}
