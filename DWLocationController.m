//
//  DWLocationController.m
//
//  Created by Dominic Wroblewski on 02/05/2011.
//  Copyright 2011 TerraCoding. All rights reserved.
//

#import "DWLocationController.h"


@implementation DWLocationController

// Initializes the location controller
- (LocationController *)init
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
  [locationManager stopUpdatingLocation];
  updated = TRUE;
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

@end
