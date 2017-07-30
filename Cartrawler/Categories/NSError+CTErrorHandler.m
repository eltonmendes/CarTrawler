//
//  NSError+CTErrorHandler.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 29/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "NSError+CTErrorHandler.h"

@implementation NSError (CTErrorHandler)

- (void)handleErrorIntoController:(UIViewController *)controller {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"error.title", @"") message:self.localizedDescription preferredStyle:UIAlertControllerStyleAlert];;
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"error.action.ok", @"") style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:okAction];
    [controller presentViewController:alertController animated:YES completion:nil];
}

@end
