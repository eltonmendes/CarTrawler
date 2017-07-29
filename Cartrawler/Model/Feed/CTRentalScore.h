//
//  CTRentalScore.h
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTBaseModel.h"

@interface CTRentalScore : CTBaseModel

@property (nonatomic , copy ,readonly) NSDate *pickUpDateTime;
@property (nonatomic , copy ,readonly) NSDate *returnDateTime;

@end
