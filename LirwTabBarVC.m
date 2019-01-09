//
//  LirwTabBarVC.m
//  toolBar
//
//  Created by  RWLi on 2019/1/3.
//  Copyright © 2019  RWLi. All rights reserved.
//

#import "LirwTabBarVC.h"
#import "LirwTabBar.h"
#import "ZMTabbar.h"

@interface LirwTabBarVC ()<ZMTababrDelegate>

@end

@implementation LirwTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
    LirwTabBar *tabbar = [[LirwTabBar alloc]initWithFrame:self.tabBar.frame];
    [self setValue:tabbar forKey:@"tabBar"];
  
    
    
}



-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
//    [self.tabBar removeFromSuperview];
//    ZMTabbar *tabbar = [[ZMTabbar alloc]initWithFrame:self.tabBar.frame];
//    tabbar.delegate = self;
//    [self.view addSubview:tabbar];
    
}

- (void)ZMTababr:(ZMTabbar *)tabbar didSelectedIndex:(int)index{
    self.selectedIndex = index;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
