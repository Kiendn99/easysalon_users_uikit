import 'package:flutter/material.dart';

enum AppLanguageType {
  english,
  vietnam,
}

extension AppLangugeTypeHelper on AppLanguageType {
  Locale locale() {
    switch (this) {
      case AppLanguageType.vietnam:
        return const Locale('vi');
      case AppLanguageType.english:
        return const Locale('en');
    }
  }
}
