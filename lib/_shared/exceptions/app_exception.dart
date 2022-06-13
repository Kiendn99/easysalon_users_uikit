
import '../intl/generated/l10n.dart';

class AppException extends Error implements Exception {}

class AppUnknowException extends AppException {
  @override
  String toString() {
    return S.current.commonException;
  }
}
