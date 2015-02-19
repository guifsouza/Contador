//
//  Contador.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"


@implementation Contador {
    int boy;
    int girl;
    int total;
}

-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
        total = 0;
    }
    return self;
}

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken = 0;
    __strong static Contador *instance = nil;
    dispatch_once(&onceToken,^{
        instance = [[self alloc] init];
    });
    
    return instance;
}

- (void)maisUmCueca {
    //otimização para facilitar leitura do código
    boy++;
    total = girl + boy;
}
- (void)maisUmaGata {
    girl++;
    total = boy + girl;
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)getTotal {
    return total;
}



@end

