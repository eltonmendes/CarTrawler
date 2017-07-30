//
//  CTBaseModel.h
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface CTBaseModel : MTLModel <MTLJSONSerializing>

+ (MTLValueTransformer *)doubleTransformer;
+ (NSValueTransformer *)dateTransformer;

@end
