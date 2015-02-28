//
//  ItemDetailsViewController.h
//  CultivApp
//
//  Created by Henry Ruiz  on 2/28/15.
//  Copyright (c) 2015 Henry Ruiz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"

@interface ItemDetailsViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIImageView *img;
@property (strong, nonatomic) IBOutlet UITextView *desc;
@property (strong, nonatomic) Item* item;

@end
