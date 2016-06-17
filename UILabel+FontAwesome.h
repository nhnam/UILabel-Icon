//
//  UILable+FontAwesome.h
//  Ring
//
//  Created by Nguyen Hoang Nam on 17/6/16.
//  Copyright © 2016 Medpats Global Pte. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+FontAwesome.h"

@interface UILabel(FontAwesome)
- (void) setText:(NSString *)text icon:(FAIcon)icon;
- (void) setIcon:(FAIcon)icon text:(NSString*)text;
@end
