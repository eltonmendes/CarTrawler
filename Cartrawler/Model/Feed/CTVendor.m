//
//  CTVendor.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTVendor.h"

@implementation CTVendor

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"name" : @"@Name",
             @"code" : @"@Code"
             };
}

@end
