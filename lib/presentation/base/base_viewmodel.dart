import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';

enum TOAST_TYPE {
  SUCCESS,
  ERROR,
}

abstract class BaseViewModel extends ChangeNotifier {
  BuildContext? _context;
  late Timer _changeStatus;
  BuildContext get context => _context!;

  setContext(BuildContext value) => _context = value;

  final loadingSubject = BehaviorSubject<bool>.seeded(false);
  final messageSubject = BehaviorSubject<String>();
  final appStatusSubject = BehaviorSubject<int>.seeded(0);
  void setLoading(bool loading) => loadingSubject.add(loading);
  bool get isLoading => loadingSubject.value;
  void setMessage(String message) => messageSubject.add(message);
  String get message => messageSubject.value;
  // 0: done, 1:success, 2: fial
  void setAppStatus(int status) {
    appStatusSubject.add(status);
    _changeStatus = Timer.periodic(const Duration(seconds: 2), (timer) {
      // appStatusSubject.add(0);
    });
  }

  int get getAppStatust => appStatusSubject.value;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  @override
  void dispose() async {
    await loadingSubject.drain();
    loadingSubject.close();
    // _changeStatus.cancel();
    super.dispose();
  }

  void showToast(String message, TOAST_TYPE type) {
    setLoading(true);
    Timer(const Duration(seconds: 2), () {
      setLoading(false);
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor:
          type == TOAST_TYPE.SUCCESS ? Colors.green[700] : Colors.red[700],
    ));
    setLoading(false);
  }

  void unFocus() {
    FocusScope.of(context).unfocus();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }
}
