#import "FjVibrationPlugin.h"
#if __has_include(<fj_vibration/fj_vibration-Swift.h>)
#import <fj_vibration/fj_vibration-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fj_vibration-Swift.h"
#endif

@implementation FjVibrationPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFjVibrationPlugin registerWithRegistrar:registrar];
}
@end
