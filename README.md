# DWLocationController

Quickly and easily get a users location.

## Example API

Initialise the object

    DWLocationController *locationController = [[DWLocationController alloc] init];
    [locationController setStopsUpdatingOnceFound:TRUE];

Start updating the location

    [locationController updateLocation];

Check if the object has found a location

    BOOL updated = FALSE;
    while(!updated) {
      updated = [locationController isUpdated];
    }

Get the latitude/longitude

    // Get Latitude/Longitude:
    float latitude = [locationController getLatitude];
    float longitude = [locationController getLongitude];

