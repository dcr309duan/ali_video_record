#import "VideoRecordPlugin.h"
#if __has_include(<video_record/video_record-Swift.h>)
#import <video_record/video_record-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "video_record-Swift.h"
#endif

@implementation VideoRecordPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVideoRecordPlugin registerWithRegistrar:registrar];
}
@end
