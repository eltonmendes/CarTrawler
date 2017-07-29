//
//  CTVehicle.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTVehicle.h"

@implementation CTVehicle

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"baggageQuantity"   : @"Vehicle.@BaggageQuantity",
             @"code"              : @"Vehicle.@Code",
             @"codeText"          : @"Vehicle.@CodeContext",
             @"driveType"         : @"Vehicle.@DriveType",
             @"fuelType"          : @"Vehicle.@FuelType",
             @"modelName"         : @"Vehicle.VehMakeModel.@Name",
             @"passengerQuantity" : @"Vehicle.@PassengerQuantity",
             @"doorCount"         : @"Vehicle.@DoorCount",
             @"hasAirCondition"   : @"Vehicle.@AirConditionInd",
             @"transmissionType"  : @"Vehicle.@TransmissionType",
             @"pictureURL"        : @"Vehicle.PictureURL",
             @"totalAmount"       : @"TotalCharge.@RateTotalAmount",
             @"estimatedTotalAmount": @"TotalCharge.@EstimatedTotalAmount",
             @"currencyCode"        : @"TotalCharge.@CurrencyCode"
             };
}

+ (NSValueTransformer *)pictureURLJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)hasAirConditionJSONTransformer {
    return [NSValueTransformer mtl_valueMappingTransformerWithDictionary:@{
                                                                           @"true":  @(YES),
                                                                           @"false": @(NO)
                                                                           }];
}
+ (NSValueTransformer *)estimatedTotalAmountJSONTransformer {
    return [self doubleTransformer];
}

+ (NSValueTransformer *)totalAmountJSONTransformer {
    return [self doubleTransformer];
}

@end
