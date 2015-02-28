//
//  ComentarioTableViewCell.h
//  CultivApp
//
//  Created by Alex Humberto Roldán Delgado on 2/28/15.
//  Copyright (c) 2015 Alex Humberto Roldán Delgado. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ComentarioTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *titulo;
@property (strong, nonatomic) IBOutlet UITextView *mensaje;
@property (strong, nonatomic) IBOutlet UIImageView *imagen;

@end
