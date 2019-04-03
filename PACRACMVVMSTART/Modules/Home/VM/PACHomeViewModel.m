//
//  PACHomeViewModel.m
//  PACRACMVVMSTART
//
//  Created by STPACS on 2018/4/19.
//  Copyright © 2018年 STPACS. All rights reserved.
//

#import "PACHomeViewModel.h"
#import "PACFivthViewModel.h"

@implementation PACHomeViewModel


- (void)initialize {
    [super initialize];
    
    
    self.taobao = [[RACCommand alloc]initWithSignalBlock:^RACSignal *(NSString *cellVM) {
        
        PACFivthViewModel *vm = [[PACFivthViewModel alloc]initWithServices:self.services params:@{KEY_TITLE:@"",@"type":@"taobao"}];
        [self.services pushViewModel:vm animated:YES];
        
        return [RACSignal empty];
    }];
    
}

@end
