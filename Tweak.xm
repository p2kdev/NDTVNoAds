@interface NDRNewsListView : UIView
@end

%hook MKStoreKit

  -(BOOL)isProductPurchased:(id)arg1
  {
    return YES;
  }

  -(BOOL)isProductActive:(id)arg1
  {
    return YES;
  }
  
%end

%hook NDAppDelegate

  -(BOOL)isSubscription
  {
    return YES;
  }

  -(void)setIsSubscription:(BOOL)arg1
  {
    %orig(YES);
  }

%end

%hook NDRNewsListView

  -(void)insertAdSlotsInNewsArray
  {
    return;
  }

%end
