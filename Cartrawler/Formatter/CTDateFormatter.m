//
//  CTDateFormatter.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 29/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTDateFormatter.h"

@interface CTDateFormatter ()

@property (nonatomic , strong) ISO8601DateFormatter * formatter;

@end

@implementation CTDateFormatter

+ (instancetype)sharedInstance
{
    static CTDateFormatter *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [CTDateFormatter new];
    });
    return sharedInstance;
}

- (ISO8601DateFormatter *)customFormatter {
    if(!self.formatter) {
        self.formatter = [ISO8601DateFormatter new];
    }
    return self.formatter;
}

#pragma mark - Public Converters for models

- (NSDate *)dateFromString:(NSString *)stringDate {
    return [[self customFormatter] dateFromString:stringDate];
}

- (NSString *)stringFromDate:(NSDate *)date {
    return [[self customFormatter] stringFromDate:date];
}

@end
