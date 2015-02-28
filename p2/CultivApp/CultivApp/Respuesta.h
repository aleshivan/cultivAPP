//
//  Respuesta.h
//  CultivApp
//
//  Created by Alex Humberto Roldán Delgado on 2/28/15.
//  Copyright (c) 2015 Alex Humberto Roldán Delgado. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Respuesta : NSObject
@property (strong, nonatomic) NSString * mensaje;
@property (strong, nonatomic) NSString * imagen;
-(id) initWithMensaje:(NSString *)mensaje imagen:(NSString *)imagen;
@end
