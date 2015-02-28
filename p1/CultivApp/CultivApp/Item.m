//
//  Item.m
//  CultivApp
//
//  Created by Henry Ruiz  on 2/28/15.
//  Copyright (c) 2015 Henry Ruiz. All rights reserved.
//

#import "Item.h"

@implementation Item

-(id) initWithParameters: Src:(NSString *)src Title:(NSString *)title Description:(NSString *)desc;
{
			if (self = [super init]) {
        self.src = src;
        self.title = title;
        self.desc = desc;
    }
    return self;
}



@end
