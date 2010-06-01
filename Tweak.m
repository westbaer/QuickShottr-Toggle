#include <Foundation/Foundation.h>
#include <notify.h>

static NSMutableDictionary *configDir = nil;

static void _load_qsettings() {
	if(configDir) CFRelease(configDir); configDir = nil;
	configDir = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/me.nhaunold.QuickShottr.plist"];
}

BOOL isCapable() {
	return YES;
}

BOOL isEnabled() {
	_load_qsettings();
	return [[configDir objectForKey:@"QSEnabled"] boolValue];
}

void setState(BOOL enabled) {
	[configDir setObject:[NSNumber numberWithBool:enabled] forKey:@"QSEnabled"];
	[configDir writeToFile:@"/var/mobile/Library/Preferences/me.nhaunold.QuickShottr.plist" atomically:NO];
	_load_qsettings();
	notify_post("QuickShottr_Refresh");
}

BOOL getDelayTime() {
	return 0.6f;
}

