//
//  TimmerUIApplication.h
//  TimerUIapplication
//
//  Created by Aref Abedjooy on 5/30/1394 AP.
//  Copyright (c) 1394 Aref Abedjooy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


#define kApplicationTimoutInMinutes 10


#define kApplicationDidTimeoutNotification @"appTimeOut"

@interface TimmerUIApplication : UIApplication
{
    NSTimer *myidleTimer;
}


-(void)resetIdleTimer;

@end
