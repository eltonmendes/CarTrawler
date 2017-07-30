//
//  CTFeedService.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTFeedService.h"
#import "CTFeed.h"

static NSString *const feedPath = @"ctabe/cars.json";

@implementation CTFeedService

+ (void)fetchFeedWithSuccess:(FeedSuccessBlock)success
                 withFailure:(FeedFailureBlock)failure {
    [self performGETRequestWithPath:feedPath withSuccess:^(id responseObject) {
        NSError *conversionError;
        
        NSArray *jsonResponse = [NSJSONSerialization JSONObjectWithData:responseObject
                                                          options:NSJSONReadingAllowFragments error:&conversionError];
        
        
        CTFeed *feed = [MTLJSONAdapter modelOfClass:CTFeed.class
                                 fromJSONDictionary:[jsonResponse firstObject]
                                              error:&conversionError];
        if(conversionError) {
            if(failure) {
                failure(conversionError);
            }
        } else if(success){
            success(feed);
        }
        
    } withFailure:failure];
}

@end
