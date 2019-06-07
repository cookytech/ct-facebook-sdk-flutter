import 'dart:async';

import 'package:flutter/services.dart';

class CtFacebookSdkFlutter {
  static const MethodChannel _channel =
      const MethodChannel('ct_facebook_sdk_flutter');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  Future<String> shareToFacebook({String url = '', String msg = ''}) async {
    final Map<String, Object> arguments = Map<String, dynamic>();
    arguments.putIfAbsent('msg', () => msg);
    arguments.putIfAbsent('url', () => url);
    dynamic result;
    try {
      result = await _channel.invokeMethod('shareToFacebook', arguments);
    } catch (e) {
      return "false";
    }
    return result;
  }
}
