
import '../intl/generated/l10n.dart';
import 'app_exception.dart';

class AppAuthException extends AppException {}

class AuthInvalidPhoneNumberException extends AppAuthException {
  @override
  String toString() {
    return S.current.signupInvalidPhoneNumber;
  }
}

class AuthWrongCodeException extends AppAuthException {
  @override
  String toString() {
    return S.current.signupWrongCode;
  }
}

class AuthUserDisabledException extends AppAuthException {
  @override
  String toString() {
    return S.current.signupUserDisable;
  }
}

class AuthExpireSessionException extends AppAuthException {
  @override
  String toString() {
    return S.current.signupExprireSession;
  }
}

class AuthSpamException extends AppAuthException {
  @override
  String toString() {
    return S.current.commonException;
  }
}

class AuthUnknowException extends AppAuthException {
  @override
  String toString() {
    return S.current.commonException;
  }
}

class AuthInValidEmailException extends AppAuthException {
  @override
  String toString() {
    return S.current.registerInvalidEmail;
  }
}

class AuthInValidPasswordlException extends AppAuthException {
  @override
  String toString() {
    return S.current.registerInvalidPassword;
  }
}

class AuthEmailAlreadyExistsException extends AppAuthException {
  @override
  String toString() {
    return S.current.registerEmailAlreadyExists;
  }
}

class AuthInvalidCharacterLengthEmail extends AppAuthException {
  @override
  String toString() {
    return S.current.checkCharacterLengthEmail;
  }
}
class AuthInvalidCharacterLengthPassword extends AppAuthException {
  @override
  String toString() {
    return S.current.checkCharacterLengthPassword;
  }
}
class AuthPleaseEnterYourName extends AppAuthException {
  @override
  String toString() {
    return S.current.registerPleaseEnterYourName;
  }
}
class AuthCheckCharacterLengthFullName extends AppAuthException {
  @override
  String toString() {
    return S.current.registerCheckCharacterLengthFullName;
  }
}
class AuthPleaseEnterYourPhoneNumber extends AppAuthException {
  @override
  String toString() {
    return S.current.registerPleaseEnterYourPhoneNumber;
  }
}
class AuthPleaseEnterYourEmail extends AppAuthException {
  @override
  String toString() {
    return S.current.registerPleaseEnterYourEmail;
  }
}
class AuthPleaseEnterYourPassword extends AppAuthException {
  @override
  String toString() {
    return S.current.registerPleaseEnterYourPassword;
  }
}
class AuthPleaseEnterYourConfirmPassword extends AppAuthException {
  @override
  String toString() {
    return S.current.registerPleaseEnterYourConfirmPassword;
  }
}
class AuthInvalidConfirmationPassword extends AppAuthException {
  @override
  String toString() {
    return S.current.registerInvalidConfirmationPassword;
  }
}


class AuthInvalidSuccess extends AppAuthException {
  @override
  String toString() {
    return S.current.checkInvalidSuccess;
  }
}