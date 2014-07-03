//
//  ICHAlertView.m
//  SkeletonWebServiceProjectNOCD
//
//  Created by Arun Dev M A on 7/3/14.
//  Copyright (c) 2014 iChathan.com. All rights reserved.
//

#import "ICHAlertView.h"

@implementation ICHAlertView
{

}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


+ (void)showAlertWithTiTle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *) cancelButtonTitle otherButtonTitles:(NSArray *)buttonTitles withCompletionBlock:(AlertCompletionBlock)completionblock andCancelBlock:(AlertCancelBlock)cancelBlock 
{
    
    
    ICHAlertView *alertView = [[ICHAlertView alloc]initWithTitle:title message:message delegate:nil cancelButtonTitle:cancelButtonTitle otherButtonTitles: nil];
    
    alertView.completionBlock = completionblock;
    alertView.cancelBlock = cancelBlock;
    alertView.delegate = alertView;
    
    if (alertView)
    {
        for (NSString *buttonTitle in buttonTitles)
        {
            [alertView addButtonWithTitle:buttonTitle];
        }
    }
    
    [alertView show];
    
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/



- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        if (_cancelBlock)
        {
            _cancelBlock();
        }
    }
    else
    {
        _completionBlock(buttonIndex);
    }
}

@end
