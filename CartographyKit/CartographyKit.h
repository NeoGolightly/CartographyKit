//
//  CartographyKit iOS.h
//  CartographyKit iOS
//
//  Created by mhelmbre on 6/12/16.
//
//



#import <TargetConditionals.h>

#if TARGET_OS_IPHONE || TARGET_OS_TV
#import <UIKit/UIKit.h>
#else
#import <AppKit/AppKit.h>
#endif


//! Project version number for CartographyKit iOS.
FOUNDATION_EXPORT double CartographyKitVersionNumber;

//! Project version string for CartographyKit iOS.
FOUNDATION_EXPORT const unsigned char CartographyKitVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <CartographyKit_iOS/PublicHeader.h>


