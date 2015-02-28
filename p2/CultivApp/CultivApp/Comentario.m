//
//  Comentario.m
//  CultivApp
//
//  Created by Alex Humberto Roldán Delgado on 2/28/15.
//  Copyright (c) 2015 Alex Humberto Roldán Delgado. All rights reserved.
//

#import "Comentario.h"

@implementation Comentario

-(id) initWithTitulo:(NSString *)titulo mensaje:(NSString *)mensaje imagen:(NSString *)imagen{
    if( self = [super init] ){
        self.respuestas = [[NSMutableArray alloc] init];
        self.titulo = titulo;
        self.mensaje = mensaje;
        self.imagen = imagen;
    }
    return self;
}
@end
