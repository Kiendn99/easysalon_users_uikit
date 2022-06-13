import 'dart:async';
import 'package:flutter/foundation.dart';

class Debounce {
  final int milliseconds;
  VoidCallback? action;
  Timer? _timer;

  Debounce({required this.milliseconds});

  run(VoidCallback action) {
    if (_timer != null) _timer!.cancel();

    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  dispose() => _timer?.cancel();
}
