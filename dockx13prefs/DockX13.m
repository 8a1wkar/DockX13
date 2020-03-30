#include "DockX13.h"

#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:0.29 green:0.37 blue:0.50 alpha:1.00];

@implementation DockX13

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}




- (void)respring:(id)sender{
pid_t pid;
    const char* args[] = {"killall", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}

- (void)github {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/8a1wkar/DockX13"]];
} 

- (void)donate {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.paypal.com/paypalme2/8a1wkar"]];
} 

- (instancetype)init {
    self = [super init];
    
    if (self) {
        HBAppearanceSettings *appearanceSettings = [[HBAppearanceSettings alloc] init];
        appearanceSettings.tintColor = UIColorFromRGB(0xB24592);
        appearanceSettings.tableViewCellSeparatorColor = [UIColor colorWithWhite:0 alpha:0];
        self.hb_appearanceSettings = appearanceSettings;

UIBarButtonItem *respringItem =
[[UIBarButtonItem alloc] initWithTitle:@"Respring"						style:UIBarButtonItemStylePlain			target:self						action:@selector(respring:)];		self.navigationItem.rightBarButtonItem = respringItem;

    }
    
    return self;
}

@end
