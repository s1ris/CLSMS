#include <Foundation/Foundation.h>
#include <CoreFoundation/CoreFoundation.h>
#import <objc/runtime.h>

@interface CTMessageCenter
+(id) sharedMessageCenter;
-(BOOL) sendSMSWithText:(id)arg1 serviceCenter:(id)arg2 toAddress:(id)arg3;
@end