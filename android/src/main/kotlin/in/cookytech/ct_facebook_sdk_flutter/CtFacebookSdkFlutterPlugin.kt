package `in`.cookytech.ct_facebook_sdk_flutter
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.share.Sharer;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.widget.ShareDialog;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import java.net.MalformedURLException;
import java.net.URL;


class CtFacebookSdkFlutterPlugin: MethodCallHandler {
  private var activity: Activity? = null
  private val callbackManager: CallbackManager? = null
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "ct_facebook_sdk_flutter")
      channel.setMethodCallHandler(CtFacebookSdkFlutterPlugin())
     callbackManager = CallbackManager.Factory.create()
    }
  }

  private fun CtFacebookSdkFlutterPlugin(channel: MethodChannel, activity: Activity){
   this.activity = activity
    channel.setMethodCallHandler(this)
  }
  override fun onMethodCall(call: MethodCall, result: Result) {
    val url: String
    val msg: String
    if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    }
    if(call.method=="shareToFacebook")
    {
//       url = call.argument("url")
//       msg = call.argument("msg")
      url="https://github.com/biswa1751"
      msg="hhhhhh"
      println("hello1")
      // shareToFacebook(url, msg, result)
    }
    else {
      result.notImplemented()
    }

  }
  private fun shareToFacebook(url: String, msg: String, result: Result) {
    FacebookSdk.setApplicationId("1591306951002591")
    FacebookSdk.sdkInitialize(activity?.getApplicationContext())
    val shareDialog = ShareDialog(activity)
    // this part is optional

//    shareDialog.registerCallback(callbackManager, object : FacebookCallback<Sharer.Result> {
//      fun onSuccess(result: Sharer.Result) {
//        println("--------------------success")
//
//      }
//
//      fun onCancel() {
//        println("-----------------onCancel")
//      }
//
//      fun onError(error: FacebookException) {
//        println("---------------onError")
//      }
//    })
  
    val content = ShareLinkContent.Builder()
            .setContentUrl(Uri.parse(url))
            .setQuote(msg)
            .build()
    if (ShareDialog.canShow(ShareLinkContent::class.java)) {
      shareDialog.show(content)
      result.success("success")
    }

  }
}

