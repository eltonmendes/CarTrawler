//
//  NSError+CTErrorHandler.h
//  Cartrawler
//
//  Created by Elton Mendes Viera on 29/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSError (CTErrorHandler)

- (void)handleErrorIntoController:(UIViewController *)controller;
    
@end
