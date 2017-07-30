//
//  CTAvailableVendors.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTAvailableVendors.h"
#import "CTVehicle.h"

@implementation CTAvailableVendors

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"vendor" : @"Vendor",
             @"vehicles" : @"VehAvails"
             };
}

+ (NSValueTransformer *)vehiclesJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[CTVehicle class]];
}

@end
