//
//  CTDefaultService.h
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^ServiceSucessBlock)(id responseObject);
typedef void(^ServiceFailureBlock)(NSError *error);

@interface CTDefaultService : NSObject

+ (void)performGETRequestWithPath:(NSString *)Path
                      withSuccess:(ServiceSucessBlock)success
                      withFailure:(ServiceFailureBlock)failure;

@end
