//
//  ComentariosTableViewController.m
//  CultivApp
//
//  Created by Alex Humberto Roldán Delgado on 2/28/15.
//  Copyright (c) 2015 Alex Humberto Roldán Delgado. All rights reserved.
//

#import "ComentariosTableViewController.h"
#import "Comentario.h"
#import "Respuesta.h"
#import "ComentarioTableViewCell.h"

@interface ComentariosTableViewController ()

@property (strong, nonatomic) NSMutableArray * comentarios;

@end

@implementation ComentariosTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * message1 = @"Las huertas en el hogar te permiten ahorrar dinero, comer alimentos frescos y más saludables, y son también amigables con el medio ambiente. No necesitas un jardín gigante para tener una huerta de rendimiento respetable. Con la planificación adecuada, la elección de los vegetales y el mantenimiento, no sólo incrementarás el rendimiento de las plantas, sino que también aumentarás el rendimiento de las distintas especies de tu huerta, en especial si rotas los cultivos y plantas durante toda la temporada.";
    NSString * message2 = @"Dale a tus plantas un balance de nutrientes para incrementar el rendimiento de tus cultivos y mejorar la salud de los vegetales, Usa métodos orgánicos o naturales como abono o estiércol de caballo o vaca, y suplementos nutritivos ecológicos y seguros. Aplica fertilizante cada algunas semanas, dependiendo de las necesidades de tu planta. Aplicar fertilizante de más quema las plantas y reduce el rendimiento de los cultivos. Aplica abono en una capa delgada bajo la parte superior del suelo, o añade varias cucharadas de agua para lograr un té de abono que puedes aplicar cada semana.";
    NSString * message3 = @"Los pesticidas orgánicos tienen la función de controlar y eliminar las plagas que pueden atacar nuestra huerta. Estos insecticidas, al ser orgánicos, no contaminan el suelo, los cursos de agua y las plantas que cultivamos.";
    
    
    self.comentarios = [[NSMutableArray alloc] init];
    
    [self.comentarios addObject: [[Comentario alloc]
         initWithTitulo:@"Mejorar las cosechas" mensaje:message1 imagen:@"user_female_4-50.png"]];
    
    [self.comentarios addObject: [[Comentario alloc]
                                  initWithTitulo:@"Nutre tus plantas" mensaje:message2 imagen:@"user_male_4-50.png"]];
    
    [self.comentarios addObject: [[Comentario alloc]
                                  initWithTitulo:@"Pesticidas orgánicos" mensaje:message3 imagen:@"user_female_4-50.png"]];
    
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
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.comentarios count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ComentarioTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"comentarioTableViewCell" forIndexPath:indexPath];
    
    Comentario * comentario = self.comentarios[indexPath.row];
    
    cell.titulo.text = comentario.titulo;
    cell.mensaje.text = comentario.mensaje;
    cell.imagen.image = [UIImage imageNamed:comentario.imagen];
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
