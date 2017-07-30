//
//  CTRentalScore.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTRentalScore.h"

@implementation CTRentalScore

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"pickUpDateTime" : @"@PickUpDateTime",
             @"returnDateTime" : @"@ReturnDateTime"
             };
}
+ (NSValueTransformer *)pickUpDateTimeJSONTransformer {
    return [self dateTransformer];
}

+ (NSValueTransformer *)returnDateTimeJSONTransformer {
    return [self dateTransformer];
}

@end
