ICHAlertView -  Alert view with Block
============

This is a simple UIAlertView subclass with completion block. It is very simple to understand and use.

Usage
=====

Drag ICHAlertView.h and .m to your project and import it.

Then use:


    [ICHAlertView showAlertWithTiTle:@"AlertView" message:@"This is a sample message." cancelButtonTitle:@"Cancel" otherButtonTitles:@[@"Ok"] withCompletionBlock:^(NSInteger index) {
        
        
    } andCancelBlock:^{
        
        
    } ];
