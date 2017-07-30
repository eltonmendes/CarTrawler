//
//  CTFeedService.h
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTDefaultService.h"

@class CTFeed;

typedef void(^FeedSuccessBlock)();
typedef void(^FeedFailureBlock)(NSError *error);

@interface CTFeedService : CTDefaultService

+ (void)fetchFeedWithSuccess:(FeedSuccessBlock)success
                 withFailure:(FeedFailureBlock)failure;

@end
