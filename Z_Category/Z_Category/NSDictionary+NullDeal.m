//
//  NSDictionary+NullDeal.m
//  GialenshopiOS
//
//  Created by zj on 2020/10/23.
//  Copyright © 2020 JL. All rights reserved.
//

#import "NSDictionary+NullDeal.h"

@implementation NSDictionary (NullDeal)

- (NSDictionary *)deleteNull {

    NSMutableDictionary *mutableDic = [[NSMutableDictionary alloc] init];
    for (NSString *keyStr in self.allKeys) {

        if ([[self objectForKey:keyStr] isEqual:[NSNull null]]) {

            [mutableDic setObject:@"" forKey:keyStr];
        }
        else{

            [mutableDic setObject:[self objectForKey:keyStr] forKey:keyStr];
        }
    }
    return mutableDic;
}

@end
