//
//  ImagePickerViewController.h
//  CultivApp
//
//  Created by Henry Ruiz  on 2/28/15.
//  Copyright (c) 2015 Henry Ruiz. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ImagePickerViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *SelectedImage;

- (IBAction)TakePhoto:(UIButton *)sender;

- (void)takeNewPhotoFromCamera;

-(void)choosePhotoFromExistingImages;

@end
