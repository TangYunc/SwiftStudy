//
//  DemoViewController.m
//  SwiftStudy
//
//  Created by 中发 on 2018/5/24.
//  Copyright © 2018年 中发. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@property (nonatomic, copy) void (^completionCallBack) (void);
@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //解除引用1:__weak
//    __weak typeof(self)weakSelf = self;
//    [self loadData:^{
//        NSLog(@"%@", weakSelf.view);
//    }];
    //解除引用2:__unsafe_unretained
    //iOS高级程序员要自行管理内存的时候，可以考虑，但是不建议使用
    //EXC_BAD_ACCESS。怀内存访问，野指针访问
    //__unsafe_unretained同样是assigne的引用（MRC中没有weak）
    //在MRC中的弱引用都是assign，不会增加引用计数，但是对象一旦被释放，指针地址不会改变，继续调用，就会出现野指针
    //在ARC weak，本质上是一个观察者模式，一旦发现对象被释放，会自动将地址置为nil，更安全
    //效率方面__weak会更低一些
    __unsafe_unretained typeof(self)weakSelf = self;
    [self loadData:^{
        NSLog(@"%@", weakSelf.view);
    }];
}

- (void)loadData:(void (^)(void))completion{
    
    //记录属性 block
    self.completionCallBack = completion;
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"耗时操作 %@",[NSThread currentThread]);
        [NSThread sleepForTimeInterval:2];
        dispatch_async(dispatch_get_main_queue(), ^{
            //执行block
            completion();
        });
    });
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
