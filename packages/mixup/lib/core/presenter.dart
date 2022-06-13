import 'package:flutter/widgets.dart';
import 'dispatcher.dart';

import '../helpers/index.dart';

class Presenter<TValue> extends StatefulWidget {
  Presenter({required this.cacheKey, required this.builder});

  final dynamic cacheKey;
  final Function(TValue? child, Dispatcher<TValue?> dispatcher) builder;

  @override
  _PresenterState<TValue> createState() => _PresenterState<TValue>();
}

class _PresenterState<TValue> extends State<Presenter<TValue>> {
  late TValue? _value;

  Dispatcher<TValue?>? _dispatcher;
  Dispatcher<TValue?> get dispatcher =>
      _dispatcher != null ? _dispatcher! : Dispatcher(widget.cacheKey);

  void _onUpdateCallback(StoreChange<TValue?> params) {
    if (this.mounted) {
      this.setState(() {
        _value = params.newValue;
      });
    }

  }

  @override
  void initState() {
    _value = dispatcher.getValue();

    dispatcher.listenOnUpdating(this._onUpdateCallback);

    super.initState();
  }

  @override
  void dispose() {
    dispatcher.removeListeners();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return this.widget.builder(this._value, this.dispatcher);
  }
}
