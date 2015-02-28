//
//  Respuesta.m
//  CultivApp
//
//  Created by Alex Humberto Roldán Delgado on 2/28/15.
//  Copyright (c) 2015 Alex Humberto Roldán Delgado. All rights reserved.
//

#import "Respuesta.h"

@implementation Respuesta
-(id) initWithMensaje:(NSString *)mensaje imagen:(NSString *)imagen{
    if( self = [super init] ){
        self.mensaje = mensaje;
        self.imagen = imagen;
    }
    return self;
}
@end
