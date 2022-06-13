import 'store.dart';

import '../helpers/index.dart';

class Dispatcher<TValue> {
  static Dispatcher<TValue>? existingOrNull<TValue>(dynamic key) {
    if (Store.isExisting(key)) {
      return Dispatcher(key);
    }

    return null;
  }

  Dispatcher(this.key);

  final dynamic key;

  bool expired = false;
  int? cacheDuration;

  StoreListener<TValue>? _onUpdating;
  StoreListener<TValue>? _onExpired;

  void _instanceOnExpired<TValue>(value) {
    expired = true;
  }

  TValue? getValue() {
    return Store.getValue(key) as TValue?;
  }

  Dispatcher<TValue> setValue(TValue? nextValue) {
    Store.setValue(key, nextValue);
    return this;
  }

  Dispatcher<TValue> setInitialValue(TValue? nextValue) {
    Store.setInitialValue(key, nextValue);
    return this;
  }

  Dispatcher<TValue> setCacheDuration(int? msDuration) {
    if (msDuration == null) {
      return this;
    }

    if (this.cacheDuration == null) {
      Store.registerEvent(key, _instanceOnExpired, StoreEvent.expired);
    }

    this.cacheDuration = msDuration;
    Store.setCacheDuration<TValue>(key, msDuration);
    return this;
  }

  Dispatcher<TValue> listenOnUpdating(StoreListener<TValue> listener) {
    if (_onUpdating != null) {
      Store.unregisterEvent(this._onUpdating!);
    }

    _onUpdating = listener;
    Store.registerEvent(key, _onUpdating!, StoreEvent.updating);

    return this;
  }

  Dispatcher<TValue> listenOnExpired(StoreListener<TValue> listener) {
    if (_onExpired != null) {
      Store.unregisterEvent(this._onExpired!);
    }

    _onExpired = listener;
    Store.registerEvent(key, _onExpired!, StoreEvent.expired);

    return this;
  }

  bool compareKey(dynamic rawKey) {
    return StoreKeys.fromRaw(rawKey) == StoreKeys.fromRaw(this.key);
  }

  /*
   * Remove all event listeners from Store.
   */
  void removeListeners() {
    if (this.cacheDuration == null) {
      Store.unregisterEvent(this._instanceOnExpired);
    }

    if (this._onUpdating != null) {
      Store.unregisterEvent(this._onUpdating!);
    }

    if (this._onExpired != null) {
      Store.unregisterEvent(this._onUpdating!);
    }
  }
}
