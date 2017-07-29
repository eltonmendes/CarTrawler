//
//  CTTotalCharge.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTTotalCharge.h"

@implementation CTTotalCharge

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"totalAmount" : @"@RateTotalAmount",
             @"estimatedTotalAmount" : @"@EstimatedTotalAmount",
             @"currencyCode" : @"@CurrencyCode"
             };
}

+ (NSValueTransformer *)estimatedTotalAmountJSONTransformer {
   return [self doubleTransformer];
}

+ (NSValueTransformer *)totalAmountJSONTransformer {
    return [self doubleTransformer];
}

@end
