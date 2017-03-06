//
//  CXCustemSheet.h
//  CXCustemSheet
//
//  Created by chen cx on 2017/3/6.
//  Copyright © 2017年 chen cx. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CXCustemSheet;

typedef void (^ SelectedAtIndex) (NSInteger index);

@protocol CXCustemSheetDelegate <NSObject>
@optional
- (void) buttonMenuCXCustemSheet:(CXCustemSheet *)buttonMenu didSelectedAtIndex:(NSUInteger)index;

@end

@interface CXCustemSheet : UIViewController

- (instancetype)initWithNameArrays:(NSArray *)nameArrays;

@property (nonatomic, readonly, getter=isVisible)BOOL visible;

@property (nonatomic, assign) id<CXCustemSheetDelegate> delegate;

@property (copy, nonatomic) SelectedAtIndex selectedAtIndex;
- (void)selectedAtIndex:(SelectedAtIndex)block;

- (void) showInView:(UIView*)view;

- (void)hide;

@end








