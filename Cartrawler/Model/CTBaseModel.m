//
//  CTBaseModel.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTBaseModel.h"
#import "CTDateFormatter.h"

@implementation CTBaseModel

+ (MTLValueTransformer *)doubleTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^NSNumber *(NSString *value, BOOL *success, NSError *__autoreleasing *error) {
        return [NSNumber numberWithDouble:value.doubleValue];
    } reverseBlock:^NSString *(NSNumber *value, BOOL *success, NSError *__autoreleasing *error) {
        return [NSString stringWithFormat:@"%.2f", value.doubleValue];
    }];
}

+ (NSValueTransformer *)dateTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^NSDate *(NSString *string, BOOL *success, NSError *__autoreleasing *error) {
        NSDate *date = [[CTDateFormatter sharedInstance] dateFromString:string];
        return date;
    } reverseBlock:^NSString *(NSDate *value, BOOL *success, NSError *__autoreleasing *error) {
        return [[CTDateFormatter sharedInstance] stringFromDate:value];
    }];
}

@end
