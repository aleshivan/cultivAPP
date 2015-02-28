//
//  Item.h
//  CultivApp
//
//  Created by Henry Ruiz  on 2/28/15.
//  Copyright (c) 2015 Henry Ruiz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject

@property (strong, nonatomic) NSString* src;

@property (strong, nonatomic) NSString* title;

@property (strong, nonatomic) NSString* desc;

@property  NSInteger* codigo;

-(id) initWithParameters: Src:(NSString *)src Title:(NSString *)title Description:(NSString *)desc;



@end
