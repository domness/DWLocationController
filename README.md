Quickly and easily get a users location.

Example:

    DWLocationController *locationController = [[DWLocationController alloc] init];
    [locationController updateLocation];

Get Latitude/Longitude:

    if([locationController isUpdated])
    {
      float latitude = [locationController getLatitude];
      float longitude = [locationController getLongitude];
    }
