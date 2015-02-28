//
//  DeseasesTableViewCell.h
//  CultivApp
//
//  Created by Henry Ruiz  on 2/28/15.
//  Copyright (c) 2015 Henry Ruiz. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DeseasesTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *img;
@property (strong, nonatomic) IBOutlet UILabel *title;
@property (strong, nonatomic) IBOutlet UITextView *desc;


@end
