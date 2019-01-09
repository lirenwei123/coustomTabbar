//
//  LirwTabBar.m
//  toolBar
//
//  Created by  RWLi on 2019/1/3.
//  Copyright © 2019  RWLi. All rights reserved.
//

#import "LirwTabBar.h"

@implementation LirwTabBar




-(void)layoutSubviews{
    [super layoutSubviews];
    CGFloat w = self.bounds.size.width/5;
    int i = 0;
    for (UIView *btn in self.subviews) {

        if ([btn isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (i == 2) {
                UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(i*w, 0, w, self.bounds.size.height)];
                [btn1 setTitle:@"qwe" forState:UIControlStateNormal];
                [btn1 addTarget:self action:@selector(btn) forControlEvents:UIControlEventTouchUpInside];
                [self addSubview:btn1];
                btn1.backgroundColor = [UIColor cyanColor];
                btn1.layer.cornerRadius = 20;
                i++;
            }
            btn.frame = CGRectMake(i*w, 0, w, self.bounds.size.height);
            i++;
        }
    }
    
    
 
}

-(void)btn{
    
}

@end
