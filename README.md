# DWLocationController

Quickly and easily get a users location.

## Example API

Example:

    DWLocationController *locationController = [[DWLocationController alloc] init];
    [locationController setStopsUpdatingOnceFound:TRUE];
    [locationController updateLocation];
    
    BOOL updated = FALSE;
    while(!updated) {
      updated = [locationController isUpdated];
    }

    // Get Latitude/Longitude:
    float latitude = [locationController getLatitude];
    float longitude = [locationController getLongitude];

