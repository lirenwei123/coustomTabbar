//
//  ZMTabbar.m
//  toolBar
//
//  Created by  RWLi on 2019/1/9.
//  Copyright © 2019  RWLi. All rights reserved.
//

#import "ZMTabbar.h"

@implementation ZMTabbar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        for (int i = 0; i<8; i++) {
            self.backgroundColor = [UIColor blueColor];
            UIButton *btn = [[UIButton alloc]init];
            [btn setTitle:[NSString stringWithFormat:@"%i乾隆",i] forState:0];
            [btn setImage:[UIImage imageNamed:@"1.jpeg"] forState:UIControlStateNormal];
            btn.imageEdgeInsets = UIEdgeInsetsMake(5, 0, self.bounds.size.height/2, 0);
            btn.titleEdgeInsets = UIEdgeInsetsMake(self.bounds.size.height/2+10, 0, 0, 0);
            [btn addTarget:self action:@selector(btn:) forControlEvents:UIControlEventTouchUpInside];
            btn.tag = 10+i;
            [self addSubview:btn];
        }
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat w = self.bounds.size.width/8;
    int i = 0;
    for (UIButton *btn in self.subviews) {
        if ([btn isKindOfClass:[UIButton class]]) {
            btn.frame =CGRectMake(i*w, 0, w, self.bounds.size.height);
            i++;
        }
    }
}


-(void)btn:(UIButton*)sender{
    if (_delegate && [_delegate respondsToSelector:@selector(ZMTababr:didSelectedIndex:)]) {
        [_delegate ZMTababr:self didSelectedIndex:sender.tag-10];
    }

}
@end
