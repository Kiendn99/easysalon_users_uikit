// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get appLanguage {
    return Intl.message(
      'English',
      name: 'appLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Please try again later`
  String get commonException {
    return Intl.message(
      'Please try again later',
      name: 'commonException',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get signupPhoneNumberTitle {
    return Intl.message(
      'Phone Number',
      name: 'signupPhoneNumberTitle',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get signupSubmit {
    return Intl.message(
      'Submit',
      name: 'signupSubmit',
      desc: '',
      args: [],
    );
  }

  /// `Input Phone Number`
  String get signupHint {
    return Intl.message(
      'Input Phone Number',
      name: 'signupHint',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Phone Number`
  String get signupInvalidPhoneNumber {
    return Intl.message(
      'Invalid Phone Number',
      name: 'signupInvalidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Wrong code`
  String get signupWrongCode {
    return Intl.message(
      'Wrong code',
      name: 'signupWrongCode',
      desc: '',
      args: [],
    );
  }

  /// `User Disable`
  String get signupUserDisable {
    return Intl.message(
      'User Disable',
      name: 'signupUserDisable',
      desc: '',
      args: [],
    );
  }

  /// `Expire Session`
  String get signupExprireSession {
    return Intl.message(
      'Expire Session',
      name: 'signupExprireSession',
      desc: '',
      args: [],
    );
  }

  /// `Input phone number`
  String get inputPhoneNumber {
    return Intl.message(
      'Input phone number',
      name: 'inputPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your name`
  String get registerPleaseEnterYourName {
    return Intl.message(
      'Please enter your name',
      name: 'registerPleaseEnterYourName',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Email`
  String get registerInvalidEmail {
    return Intl.message(
      'Invalid Email',
      name: 'registerInvalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Password`
  String get registerInvalidPassword {
    return Intl.message(
      'Invalid Password',
      name: 'registerInvalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email Already Exists`
  String get registerEmailAlreadyExists {
    return Intl.message(
      'Email Already Exists',
      name: 'registerEmailAlreadyExists',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, your name must be longer than 2 characters`
  String get registerCheckCharacterLengthFullName {
    return Intl.message(
      'Sorry, your name must be longer than 2 characters',
      name: 'registerCheckCharacterLengthFullName',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter PhoneNumber`
  String get registerPleaseEnterYourPhoneNumber {
    return Intl.message(
      'Please Enter PhoneNumber',
      name: 'registerPleaseEnterYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Email`
  String get registerPleaseEnterYourEmail {
    return Intl.message(
      'Please Enter Email',
      name: 'registerPleaseEnterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your Password`
  String get registerPleaseEnterYourPassword {
    return Intl.message(
      'Please Enter Your Password',
      name: 'registerPleaseEnterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your Confirm Password`
  String get registerPleaseEnterYourConfirmPassword {
    return Intl.message(
      'Please Enter Your Confirm Password',
      name: 'registerPleaseEnterYourConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Invalid confirmation password`
  String get registerInvalidConfirmationPassword {
    return Intl.message(
      'Invalid confirmation password',
      name: 'registerInvalidConfirmationPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, your username must be between 6 and 30  in character length`
  String get checkCharacterLengthEmail {
    return Intl.message(
      'Sorry, your username must be between 6 and 30  in character length',
      name: 'checkCharacterLengthEmail',
      desc: '',
      args: [],
    );
  }

  /// `Use 8 or more characters and a combination of letters, numbers and symbols`
  String get checkCharacterLengthPassword {
    return Intl.message(
      'Use 8 or more characters and a combination of letters, numbers and symbols',
      name: 'checkCharacterLengthPassword',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get checkInvalidSuccess {
    return Intl.message(
      'Success',
      name: 'checkInvalidSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get signInEmailOr {
    return Intl.message(
      'Or',
      name: 'signInEmailOr',
      desc: '',
      args: [],
    );
  }

  /// `Login with email`
  String get signInWithEmail {
    return Intl.message(
      'Login with email',
      name: 'signInWithEmail',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with phone`
  String get signInWithPhone {
    return Intl.message(
      'Sign in with phone',
      name: 'signInWithPhone',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Invalid account and password`
  String get signInInvalidAccountAndPassword {
    return Intl.message(
      'Invalid account and password',
      name: 'signInInvalidAccountAndPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter full information`
  String get signInPleaseEnterFullInformation {
    return Intl.message(
      'Please enter full information',
      name: 'signInPleaseEnterFullInformation',
      desc: '',
      args: [],
    );
  }

  /// `Do not have an account?`
  String get signInDoNotHaveAnAccount {
    return Intl.message(
      'Do not have an account?',
      name: 'signInDoNotHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Facebook`
  String get siginInWithFb {
    return Intl.message(
      'Sign in with Facebook',
      name: 'siginInWithFb',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get signInForgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'signInForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get signInPassword {
    return Intl.message(
      'Password',
      name: 'signInPassword',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get signInNotification {
    return Intl.message(
      'Notification',
      name: 'signInNotification',
      desc: '',
      args: [],
    );
  }

  /// `Oke`
  String get signInOke {
    return Intl.message(
      'Oke',
      name: 'signInOke',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get signInCancel {
    return Intl.message(
      'Cancel',
      name: 'signInCancel',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get lastLine {
    return Intl.message(
      '',
      name: 'lastLine',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
