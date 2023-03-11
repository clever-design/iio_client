/*
 * Copyright (c) 2023. Marcel Graber
 * All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 */

import 'dart:async';

import 'package:flutter/services.dart';

class IIOClient {
  /// Singleton instance
  static final IIOClient _instance = IIOClient._internal();

  /// Singleton factory
  factory IIOClient() {
    return _instance;
  }

  /// Singleton constructor
  IIOClient._internal();

  /// Method Channel used to communicate state with
  static const MethodChannel _methodChannel =
      MethodChannel('design.clever.iio_client/iio_state');

  /// Start advertising. Takes [AdvertiseData] as an input.
  Future<void> connect() async {
    return _methodChannel.invokeMethod('connect');
  }
}
