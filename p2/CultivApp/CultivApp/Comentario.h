//
//  Comentario.h
//  CultivApp
//
//  Created by Alex Humberto Roldán Delgado on 2/28/15.
//  Copyright (c) 2015 Alex Humberto Roldán Delgado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Respuesta.h"

@interface Comentario : NSObject
@property (strong, nonatomic) NSString * titulo;
@property (strong, nonatomic) NSString * mensaje;
@property (strong, nonatomic) NSMutableArray * respuestas;

@property (strong, nonatomic) NSString * imagen;
-(id) initWithTitulo:(NSString *)titulo mensaje:(NSString *)mensaje imagen:(NSString *)imagen;

@end
