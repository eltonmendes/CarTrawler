//
//  NSDate+CTCustomDate.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 29/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "NSDate+CTCustomDate.h"

@implementation NSDate (CTCustomDate)

static NSString *const kDefaultFormat = @"MMMM dd, h:mm a";

- (NSString *)formattedDate {
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:kDefaultFormat];
    return [dateFormatter stringFromDate:self];
}

@end
