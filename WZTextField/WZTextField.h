//
//  WZTextField.h
//  WZTextField
//
//  Created by victor zhang on 2/24/16.
//  Copyright © 2016 victor zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WZTextField : UIView

@property (weak, nonatomic) UITextField *textField;

@property (weak, nonatomic) UIView *underLineView;

@property (weak, nonatomic) UILabel *placeHolderLabel;
@property (weak, nonatomic) UILabel *hintMessageLabel;

@end
