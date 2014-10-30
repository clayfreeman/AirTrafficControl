#import <substrate.h>

@interface SBAlertItemsController
+ (id)sharedInstance;
- (void)deactivateAlertItem:(id)alertItem;
@end

%hook SBAlertItemsController
/**
 * @remarks
 *   Functionality for this method borrowed from pNre/NoAnnoyance
 */
- (void)activateAlertItem:(id)alert {
  if ([alert isKindOfClass:[%c(SBLaunchAlertItem) class]]) {
    if (MSHookIvar<int>(alert, "_type") == 1 &&
        MSHookIvar<int>(alert, "_isDataAlert") != 0) {
      [self deactivateAlertItem:alert];
      return;
    }
  }
  %orig;
}
%end
