#import <Foundation/Foundation.h>

#import "VisionCameraScanner.h"
#if defined __has_include && __has_include("VisionCameraScanner-Swift.h")
#import "VisionCameraScanner-Swift.h"
#else
#import <VisionCameraScanner/VisionCameraScanner-Swift.h>
#endif

@implementation RegisterPlugins

    + (void) load {
        [FrameProcessorPluginRegistry addFrameProcessorPlugin:@"scanCodes"
                                              withInitializer:^FrameProcessorPlugin*(NSDictionary* options) {
            return [[VisionCameraScanner alloc] init];
        }];
    }

@end
