//
//  DiseasesTableViewController.m
//  CultivApp
//
//  Created by Henry Ruiz  on 2/28/15.
//  Copyright (c) 2015 Henry Ruiz. All rights reserved.
//

#import "DiseasesTableViewController.h"
#import "Item.h"
#import "DeseasesTableViewCell.h"
#import "ItemDetailsViewController.h"

@interface DiseasesTableViewController ()


@property (strong, nonatomic) NSArray* items;

@end

@implementation DiseasesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	
				Item* item1 = [[Item alloc] init];
				item1.src = @"1.jpg";
				item1.title = @"Mosca Blanca";
				//item1.desc = @"";
	
	
	Item* item2 = [[Item alloc] init];
				item2.src = @"2.jpg";
				item2.title = @"Piojo";
				//item1.desc = @"";
	
	Item* item3 = [[Item alloc] init];
				item3.src = @"3.jpg";
				item3.title = @"Enfermedad 3";
				//item1.desc = @"";
	
	Item* item4 = [[Item alloc] init];
				item4.src = @"4.jpg";
				item4.title = @"Enfermedad 4";
				//item1.desc = @"";
	
	Item* item5 = [[Item alloc] init];
				item5.src = @"5.jpg";
				item5.title = @"Enfermedad 5";
				//item1.desc = @"";
	
	Item* item6 = [[Item alloc] init];
				item6.src = @"6.jpg";
				item6.title = @"Enfermedad 6";
				//item1.desc = @"";
	
	Item* item7 = [[Item alloc] init];
				item7.src = @"7.jpg";
				item7.title = @"Enfermedad 7";
				//item1.desc = @"";
		self.items = [[NSArray alloc] initWithObjects:item1,item2,item3,item4,item5,item6, item7, nil];
	
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.items count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
			Item* c= self.items[indexPath.row];
			DeseasesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"deseasesTableViewCell" forIndexPath:indexPath];
			cell.img.image = [UIImage imageNamed:c.src];;
			cell.title.text = c.title;
			//cell.desc.image = c.desc;
	
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
	
			ItemDetailsViewController* dtv = [self.storyboard instantiateViewControllerWithIdentifier:@"itemDetailsViewController"];
			dtv.item = self.items[indexPath.row];
			[self.navigationController pushViewController:dtv animated:YES];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
