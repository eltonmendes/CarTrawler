//
//  CTDateFormatter.h
//  Cartrawler
//
//  Created by Elton Mendes Viera on 29/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ISO8601DateFormatter.h"

@interface CTDateFormatter : NSObject

+ (instancetype)sharedInstance;


#pragma mark - Public Converters

- (NSDate *)dateFromString:(NSString *)stringDate;
- (NSString *)stringFromDate:(NSDate *)date;

@end
