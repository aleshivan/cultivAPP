//
//  ContactsTableViewController.m
//  CultivApp
//
//  Created by Henry Ruiz  on 2/28/15.
//  Copyright (c) 2015 Henry Ruiz. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "Item.h"
#import "ContactTableViewCell.h"

@interface ContactsTableViewController ()

@property (strong, nonatomic) NSArray* items;

@end

@implementation ContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
				Item* item1 = [[Item alloc] init];
				item1.src = @"11.png";
				item1.title = @"Henry Ruiz";
				item1.desc = @"Entomolologo";
	
	
	Item* item2 = [[Item alloc] init];
				item2.src = @"22.png";
				item2.title = @"Luis Armando";
				item2.desc = @"Agricultor";
	
	Item* item3 = [[Item alloc] init];
				item3.src = @"33.png";
				item3.title = @"Camilo Torres";
				item3.desc = @"Cambio Climatico";
	
	Item* item4 = [[Item alloc] init];
				item4.src = @"44.png";
				item4.title = @"Gerado Puertas";
				item4.desc = @"Estudiante de Ingenieria Agricola";
	
	Item* item5 = [[Item alloc] init];
				item5.src = @"55.png";
				item5.title = @"Luis Rodriguez";
				item5.desc = @"Investigador";
	
	Item* item6 = [[Item alloc] init];
				item6.src = @"66.png";
				item6.title = @"Miguel Restrepo";
				item6.desc = @"Biotecnologia";
	
	Item* item7 = [[Item alloc] init];
				item7.src = @"77.png";
				item7.title = @"Ministerio del medio ambiente";
				item7.desc = @"Entidad Publica";

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
    ContactTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contactTableViewCell" forIndexPath:indexPath];
    Item* item= self.items[indexPath.row];
				cell.name.text = item.title;
				cell.job.text = item.desc;
				cell.img.image = [UIImage imageNamed:item.src];
	
    // Configure the cell...
    
    return cell;
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
