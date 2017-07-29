//
//  CTFeed.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTFeed.h"
#import "CTAvailableVendors.h"

@implementation CTFeed

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"rentalScore"    : @"VehAvailRSCore.VehRentalCore",
             @"availableVendors": @"VehAvailRSCore.VehVendorAvails",
             };
}

+ (NSValueTransformer *)availableVendorsJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[CTAvailableVendors class]];
}

@end
