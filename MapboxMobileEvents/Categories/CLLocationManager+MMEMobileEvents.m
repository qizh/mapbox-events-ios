#import "CLLocationManager+MMEMobileEvents.h"
#if SWIFT_PACKAGE
#import "../MMEConstants.h"
#else
#import "MMEConstants.h"
#endif

@implementation CLLocationManager (MMEMobileEvents)

void mme_linkCLLocationManagerCategory(){}

+ (NSString *)mme_authorizationStatusString {
    CLAuthorizationStatus status = [CLLocationManager authorizationStatus];
    NSString *statusString;
    
    switch (status) {
        case kCLAuthorizationStatusDenied:
            statusString = MMEEventStatusDenied;
            break;
        case kCLAuthorizationStatusRestricted:
            statusString = MMEEventStatusRestricted;
            break;
        case kCLAuthorizationStatusNotDetermined:
            statusString = MMEEventStatusNotDetermined;
            break;
        case kCLAuthorizationStatusAuthorizedAlways:
            statusString = MMEEventStatusAuthorizedAlways;
            break;
        case kCLAuthorizationStatusAuthorizedWhenInUse:
            statusString = MMEEventStatusAuthorizedWhenInUse;
            break;
        default:
            statusString = MMEEventUnknown;
            break;
    }
    return statusString;
}

@end
