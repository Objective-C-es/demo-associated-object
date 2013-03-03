//
//  UIImage+Title.m
//  DemoAssociatedObjects
//
//  Created by Rafael Aguilar Martín on 03/03/13.
//  Copyright (c) 2013 Rafael Aguilar Martín. All rights reserved.
//

#import "UIImage+Title.h"
#import <objc/runtime.h>

static const char kTitleKey;

@implementation UIImage (Title)

/**
 
 void objc_setAssociatedObject(id object, void *key, id value, objc_AssociationPolicy policy)
 
 object: el objeto al cual queremos asociar un valor.
 
 key: clave por la cual podremos hacer referencia al valor asociado. Utilizamos el operador & para obetner su dirección de memoria.
 
 value: el valor que queremos asociar al objeto.
 
 policy: política de gestión de memoria a utilizar (muy similar a la sintaxis property: OBJC_ASSOCIATION_ASSIGN, OBJC_ASSOCIATION_RETAIN...)
 
 */

- (void)setTitle:(NSString *)title {
    objc_setAssociatedObject(self, &kTitleKey, title, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString*)title {
    return objc_getAssociatedObject(self, &kTitleKey);
}

@end
