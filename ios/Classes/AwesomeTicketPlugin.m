#import "AwesomeTicketPlugin.h"
#if __has_include(<awesome_ticket/awesome_ticket-Swift.h>)
#import <awesome_ticket/awesome_ticket-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "awesome_ticket-Swift.h"
#endif

@implementation AwesomeTicketPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAwesomeTicketPlugin registerWithRegistrar:registrar];
}
@end
