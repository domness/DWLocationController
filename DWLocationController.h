//
//  DWLocationController.h
//
//  Created by Dominic Wroblewski on 02/05/2011.
//  Copyright 2011 TerraCoding. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface DWLocationController : NSObject <CLLocationManagerDelegate> {

  CLLocationManager           *locationManager;

  float latitude;
  float longitude;
  BOOL  updated;

}

- (DWLocationController *)init;
- (void)updateLocation;
- (float)getLatitude;
- (float)getLongitude;
- (BOOL)isUpdated;

@end
