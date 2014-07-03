ICHAlertView -  Alert view with Block
============

This is a simple UIAlertView subclass with completion block. It is very simple to understand and use.

Usage
=====

Drag ICHAlertView.h and .m to your project and import it.

Then use:


    [ICHAlertView showAlertWithTiTle:@"AlertView" message:@"Very simple to use." cancelButtonTitle:@"Cancel" withCompletionBlock:^(NSInteger index) {
        
        //When user taps any button other than cancel button
    } andCancelBlock:^{
        
        //When user taps cancel button in alert view
    } otherButtonTitles:@[@"Ok"]];
