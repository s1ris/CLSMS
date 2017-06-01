#import "Headers.h"
#import "spawn.h"
#import "signal.h"

extern "C" CFNotificationCenterRef CFNotificationCenterGetDistributedCenter(void);

%hook SpringBoard

static void CallBackFunction(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo) {
	[[CTMessageCenter sharedMessageCenter] sendSMSWithText:[(__bridge NSDictionary *)userInfo objectForKey:@"message"] serviceCenter:nil toAddress:[(__bridge NSDictionary *)userInfo objectForKey:@"address"]];
}

-(id) init {
	CFNotificationCenterAddObserver(CFNotificationCenterGetDistributedCenter(), NULL, CallBackFunction, CFSTR("CLSMS"), NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
	return %orig;
}

%end

%ctor {
	%init;
}
