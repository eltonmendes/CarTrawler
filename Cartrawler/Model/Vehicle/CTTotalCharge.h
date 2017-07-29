//
//  CTTotalCharge.h
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTBaseModel.h"

@interface CTTotalCharge : CTBaseModel

@property (nonatomic, assign, readonly) double totalAmount;
@property (nonatomic, assign, readonly) double estimatedTotalAmount;
@property (nonatomic, copy, readonly) NSString *currencyCode;

@end
