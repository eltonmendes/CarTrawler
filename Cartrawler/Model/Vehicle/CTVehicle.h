//
//  CTVehicle.h
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTBaseModel.h"

@interface CTVehicle : CTBaseModel

@property (nonatomic, copy, readonly) NSString *baggageQuantity;
@property (nonatomic, copy, readonly) NSString *code;
@property (nonatomic, copy, readonly) NSString *codeText;
@property (nonatomic, copy, readonly) NSString *driveType;
@property (nonatomic, copy, readonly) NSString *doorCount;
@property (nonatomic, copy, readonly) NSString *fuelType;
@property (nonatomic, copy, readonly) NSString *modelName;
@property (nonatomic, copy, readonly) NSString *passengerQuantity;
@property (nonatomic, copy, readonly) NSURL *pictureURL;
@property (nonatomic, assign, readonly) BOOL hasAirCondition;
@property (nonatomic, copy, readonly) NSString *transmissionType;
@property (nonatomic, assign, readonly) double totalAmount;
@property (nonatomic, assign, readonly) double estimatedTotalAmount;
@property (nonatomic, copy, readonly) NSString *currencyCode;

@end
