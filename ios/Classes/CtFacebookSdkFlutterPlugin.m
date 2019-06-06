#import "CtFacebookSdkFlutterPlugin.h"
#import <ct_facebook_sdk_flutter/ct_facebook_sdk_flutter-Swift.h>

@implementation CtFacebookSdkFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCtFacebookSdkFlutterPlugin registerWithRegistrar:registrar];
}
@end
