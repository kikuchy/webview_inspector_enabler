#import "WebviewInspectorEnablerPlugin.h"

@implementation WebviewInspectorEnablerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"webview_inspector_enabler"
            binaryMessenger:[registrar messenger]];
  WebviewInspectorEnablerPlugin* instance = [[WebviewInspectorEnablerPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  result(FlutterMethodNotImplemented);
}

@end
