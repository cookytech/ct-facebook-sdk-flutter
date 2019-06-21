import 'dart:async';

import 'package:flutter/services.dart';

class CtFacebookSdkFlutter {
  static const MethodChannel _channel =
      const MethodChannel('ct_facebook_sdk_flutter');

  static Future<int>  platformVersion(int a , int b) async {
    final int sum = await _channel.invokeMethod<int>('addTwoNumbers', {"first":a,"second":b});
    return sum;
  }
}
