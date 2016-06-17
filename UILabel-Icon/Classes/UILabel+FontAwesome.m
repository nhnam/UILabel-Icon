//
//  UILable+FontAwesome.m
//  Ring
//
//  Created by Nguyen Hoang Nam on 17/6/16.
//  Copyright © 2016 Medpats Global Pte. Ltd. All rights reserved.
//

#import "UILabel+FontAwesome.h"

@implementation UILabel(FontAwesome)
- (void) setText:(NSString *)text icon:(FAIcon)icon{
    NSString *iconText = [NSString fa_stringForFontAwesomeIcon:icon];
    self.font = [UIFont fontWithName:kFontAwesomeFont size:self.font.pointSize];
    NSMutableAttributedString *attributes = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@  %@ ",text,iconText] attributes:@{}];
    [attributes addAttribute:NSFontAttributeName value:[UIFont fontWithName:kFontAwesomeFont size:self.font.pointSize] range:NSMakeRange(self.text.length-3, 1)];
    [attributes addAttribute:NSBaselineOffsetAttributeName value:@(-2) range:NSMakeRange(self.text.length-3, 1)];
}

- (void) setIcon:(FAIcon)icon text:(NSString*)text {
    NSString *iconText = [NSString fa_stringForFontAwesomeIcon:icon];
    self.font = [UIFont fontWithName:kFontAwesomeFont size:self.font.pointSize];
    NSMutableAttributedString *attributes = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@" %@  %@",iconText, text] attributes:@{}];
    [attributes addAttribute:NSFontAttributeName value:[UIFont fontWithName:kFontAwesomeFont size:self.font.pointSize] range:NSMakeRange(1, 1)];
    [attributes addAttribute:NSBaselineOffsetAttributeName value:@(-2) range:NSMakeRange(1, 1)];
    self.attributedText = attributes;
}
@end
