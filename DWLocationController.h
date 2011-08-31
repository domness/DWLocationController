//
//  DWLocationController.h
//
//  Created by Dominic Wroblewski on 02/05/2011.
//  Copyright 2011 TerraCoding. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface DWLocationController : NSObject <CLLocationManagerDelegate> {
@private
  CLLocationManager     * locationManager;
  float                   latitude;
  float                   longitude;
  BOOL                    updated;
  BOOL                    stopsUpdatingOnceFound;
}

@property (assign) BOOL stopsUpdatingOnceFound;

- (DWLocationController *)init;
- (void)set
- (void)updateLocation;
- (float)getLatitude;
- (float)getLongitude;
- (BOOL)isUpdated;
- (void)stopUpdatingLocation;

@end
