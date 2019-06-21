package `in`.cookytech.ct_facebook_sdk_flutter

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

class CtFacebookSdkFlutterPlugin: MethodCallHandler {
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "ct_facebook_sdk_flutter")
      channel.setMethodCallHandler(CtFacebookSdkFlutterPlugin())
    }
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "addTwoNumbers") {
      var a : Int? = call.argument("first");
      var b: Int?= call.argument("second");
      if(a != null && b != null)
      result.success(a+b);
    } else {
      result.notImplemented()
    }
  }
}
