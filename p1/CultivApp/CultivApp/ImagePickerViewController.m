//
//  ImagePickerViewController.m
//  CultivApp
//
//  Created by Henry Ruiz  on 2/28/15.
//  Copyright (c) 2015 Henry Ruiz. All rights reserved.
//

#import "ImagePickerViewController.h"
#import "DiseasesTableViewController.h"

@interface ImagePickerViewController ()

@end

@implementation ImagePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
- (IBAction)Search:(id)sender {
			//DiseasesTableViewController* dtv = [self.storyboard instantiateViewControllerWithIdentifier:@"diseasesTableViewController"];
			//dtv.carro = self.carros[indexPath.row];
			//[self.navigationController pushViewController:dtv animated:YES];
}

- (void)takeNewPhotoFromCamera
{
    if ([UIImagePickerController isSourceTypeAvailable: UIImagePickerControllerSourceTypeCamera])
    {
       UIImagePickerController *picker = [[UIImagePickerController alloc] init];
       picker.delegate = self;
       picker.allowsEditing = YES;
       picker.sourceType = UIImagePickerControllerSourceTypeCamera;
       [self presentViewController:picker animated:YES completion:NULL];
    }
				else{
					 UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"Device has no camera"
                                                        delegate:nil
                                                        cancelButtonTitle:@"OK"
                                                        otherButtonTitles: nil];
        
        [myAlertView show];
				}
}
-(void)choosePhotoFromExistingImages
{
    if ([UIImagePickerController isSourceTypeAvailable: UIImagePickerControllerSourceTypePhotoLibrary])
    {
				  UIImagePickerController *picker = [[UIImagePickerController alloc] init];
      picker.delegate = self;
      picker.allowsEditing = YES;
      picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
      [self presentViewController:picker animated:YES completion:NULL];
					
				}
				else{
					 UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"Device has no camera"
                                                        delegate:nil
                                                        cancelButtonTitle:@"OK"
                                                        otherButtonTitles: nil];
        
        [myAlertView show];
				}
}

- (IBAction)TakePhoto:(UIButton *)sender {

	  [self choosePhotoFromExistingImages];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
	
				UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.SelectedImage.image = chosenImage;
    [picker dismissViewControllerAnimated:YES completion:NULL];

}

@end
