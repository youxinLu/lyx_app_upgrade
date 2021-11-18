#import "LyxAppUpgradePlugin.h"
#if __has_include(<lyx_app_upgrade/lyx_app_upgrade-Swift.h>)
#import <lyx_app_upgrade/lyx_app_upgrade-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "lyx_app_upgrade-Swift.h"
#endif

@implementation LyxAppUpgradePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLyxAppUpgradePlugin registerWithRegistrar:registrar];
}
@end
