//
//  DWLocationController.m
//
//  Created by Dominic Wroblewski on 02/05/2011.
//  Copyright 2011 TerraCoding. All rights reserved.
//

#import "DWLocationController.h"


@implementation DWLocationController

@synthesize stopsUpdatingOnceFound;

// Initializes the location controller
- (DWLocationController *)init
{
  locationManager = [[CLLocationManager alloc] init];
  locationManager.delegate = self;
  locationManager.distanceFilter = kCLDistanceFilterNone;
  locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
  updated = FALSE;
  return self;
}

// Updates the user location
- (void)updateLocation
{
  updated = FALSE;
  [locationManager startUpdatingLocation];
}

// Receives location
- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
  latitude = newLocation.coordinate.latitude;
  longitude = newLocation.coordinate.longitude;
  updated = TRUE;
  if (stopsUpdatingOnceFound) {
    [self stopUpdatingLocation];
  }
}

// Gets the latitude
- (float)getLatitude
{
  return latitude;
}

// Gets the longitude
- (float)getLongitude
{
  return longitude;
}


// Returns if the object has got a location yet
- (BOOL)isUpdated
{
  return updated;
}

// Stops the location manager from updating
- (void)stopUpdatingLocation
{
  [locationManager stopUpdatingLocation];
}

@end
