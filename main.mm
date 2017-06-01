#include <Foundation/Foundation.h>
#include <CoreFoundation/CoreFoundation.h>
#import "objc/runtime.h"

extern "C" CFNotificationCenterRef CFNotificationCenterGetDistributedCenter(void);

int main(int argc, char **argv, char **envp) {
	if (argc == 1) {
		printf("Usage: clsms message number\n Phone number must be prefixed with +1 (or country code)\n");
	}
	else if (argc == 2) {
		printf("Usage: clsms message number\n Phone number must be prefixed with +1 (or country code)\n");
	}
	else if (argc == 3) {
		printf("Sending...\n");
		CFNotificationCenterPostNotification(CFNotificationCenterGetDistributedCenter(), CFSTR("CLSMS"), NULL, (__bridge CFDictionaryRef) @{@"message" : [NSString stringWithUTF8String:argv[1]], @"address" : [NSString stringWithUTF8String:argv[2]]}, true);
	}
	return 0;
}
