@interface NDNewsStory : NSObject
  @property (nonatomic,strong) NSString *mNewsType;
@end

@interface NDRNewsListView : UIView
  @property (nonatomic,strong) NSMutableDictionary *heightAtIndexPath;
@end

%hook NDRNewsListView

// - (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2
// {
//   UITableViewCell* origCell = %orig;
//   NSString *origCellClass = NSStringFromClass([origCell classForCoder]);
//
//   if ([origCellClass isEqualToString:@"NDRNewsListNativeAdCell"])
//   {
//     [self.heightAtIndexPath setValue: @0 forKey: arg2];
//     [origCell setHidden:YES];
//   }
//   return origCell;
// }

  -(void)insertAdSlotsInNewsArray
  {
    return;
  }
  // -(void)setNews:(NSMutableArray*)arg1
  // {
  //   NSMutableArray *discardedItems = [NSMutableArray array];
  //   for(id newsItem in arg1)
  //   {
  //     if ([newsItem isKindOfClass:NSClassFromString(@"NDNewsStory")]) {
  //         if ([((NDNewsStory*)newsItem).mNewsType isEqualToString:@"isNativeAd"])
  //           [discardedItems addObject:newsItem];
  //     }
  //   }
  //   [arg1 removeObjectsInArray:discardedItems];
  //   %orig(arg1);
  // }

%end
