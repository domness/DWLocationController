//
//  DWLocationController.m
//
//  Created by Dominic Wroblewski on 02/05/2011.
//  Copyright 2011 TerraCoding. All rights reserved.
//

#import "DWLocationController.h"


@implementation DWLocationController

- (LocationController *)init
{
  locationManager = [[CLLocationManager alloc] init];
  locationManager.delegate = self;
  locationManager.distanceFilter = kCLDistanceFilterNone; // whenever we move
  locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters; // 100 m

  return self;
}

- (void)updateLocation
{
  [locationManager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
  latitude = newLocation.coordinate.latitude;
  longitude = newLocation.coordinate.longitude;

  [locationManager stopUpdatingLocation];

  NSLog(@"Location: %f, %f", latitude, longitude);
}

- (float)getLatitude
{
  return latitude;
}

- (float)getLongitude
{
  return longitude;
}

@end
