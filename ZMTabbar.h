//
//  ZMTabbar.h
//  toolBar
//
//  Created by  RWLi on 2019/1/9.
//  Copyright © 2019  RWLi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class ZMTabbar;
@protocol ZMTababrDelegate <NSObject>

-(void)ZMTababr:(ZMTabbar*)tabbar didSelectedIndex:(NSInteger)index;


@end

@interface ZMTabbar : UIView
@property(nonatomic,weak)id<ZMTababrDelegate>  delegate;
@end

NS_ASSUME_NONNULL_END
