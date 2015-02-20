//
//  Contador.h
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

@protocol Atualizador <NSObject>

@required
- (void)atualiza;

@end

@interface Contador : NSObject

+ (instancetype)sharedInstance;
- (void)maisUmCueca;
- (void)maisUmaGata;

@property (nonatomic, assign)id delegate;

- (int)getBoys;
- (int)getGirls;
- (int)getTotal;

@end

