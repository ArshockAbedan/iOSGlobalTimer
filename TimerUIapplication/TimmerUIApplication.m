//
//  TimmerUIApplication.m
//  TimerUIapplication
//
//  Created by Aref Abedjooy on 5/30/1394 AP.
//  Copyright (c) 1394 Aref Abedjooy. All rights reserved.
//

#import "TimmerUIApplication.h"

@implementation TimmerUIApplication

-(void)sendEvent:(UIEvent *)event
{
    [super sendEvent:event];
    
    if (!myidleTimer) {
        [self resetIdleTimer];
    }
    
    NSSet *allTouches = [event allTouches];
    if ([allTouches count] > 0)
    {
        UITouchPhase phase = ((UITouch *)[allTouches anyObject]).phase;
        if (phase == UITouchPhaseBegan) {
            [self resetIdleTimer];
        }
    }
    
}

//as labeled --- rest timer

-(void)resetIdleTimer
{
    if (myidleTimer) {
        [myidleTimer invalidate];
    }
    
    
    int timeout = kApplicationTimoutInMinutes;
    myidleTimer = [NSTimer scheduledTimerWithTimeInterval:timeout target:self selector:@selector(idleTimerExceeded) userInfo:nil repeats:NO];
}



// if timer reaches the KapplicationTimeutInMinutes, post this notification
-(void)idleTimerExceeded
{
    [[NSNotificationCenter defaultCenter] postNotificationName:kApplicationDidTimeoutNotification object:nil];
}
@end
