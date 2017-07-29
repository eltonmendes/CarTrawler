//
//  CTVendor.h
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTBaseModel.h"

@interface CTVendor : CTBaseModel

@property (nonatomic , copy, readonly) NSString *code;
@property (nonatomic , copy, readonly) NSString *name;

@end
