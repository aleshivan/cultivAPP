//
//  ItemDetailsViewController.m
//  CultivApp
//
//  Created by Henry Ruiz  on 2/28/15.
//  Copyright (c) 2015 Henry Ruiz. All rights reserved.
//

#import "ItemDetailsViewController.h"
#import "ContactsTableViewController.h"

@interface ItemDetailsViewController ()

@end

@implementation ItemDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
				self.img.image =  [UIImage imageNamed:self.item.src];
	   [self setTitle:self.item.title];
				//self.desc.text = self.item.desc;
				
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Share:(id)sender {
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)AskToPeople:(id)sender {
			ContactsTableViewController* dtv = [self.storyboard instantiateViewControllerWithIdentifier:@"contactsTableViewController"];
			[self.navigationController pushViewController:dtv animated:YES];

}

@end
