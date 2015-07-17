//
//  Copyright (c) 2015 Intel Corporation. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RTCVideoRenderer.h"

/// Base class of all streams in the SDK
@interface RTCStream : NSObject

/// @cond
// Init a RTCStream instance.
-(id)init;
/// @endcond

/// Attach the stream to a renderer. The render doesn't retain this stream.
-(void)attach:(NSObject<RTCVideoRenderer>*)renderer;

@end
