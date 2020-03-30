// 
// Developer by 8a1wkar
// Twitter 8a1wkar_dev
// 2020 March 29

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>
#import <Cephei/HBPreferences.h>
#import <spawn.h>

%config(generator=internal)
%group DockX13


%hook UITraitCollection
-(double)displayCornerRadius{
return 1;
}
%end


%end
%ctor
{
  HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.apple.springboard"];
 bool Enable = [([Key objectForKey:@"enabled"] ?: @(NO)) boolValue];

if (Enable) {
 %init(DockX13);

}
}