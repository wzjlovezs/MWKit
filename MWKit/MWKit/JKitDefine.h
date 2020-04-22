//
//  JKitDefine.h
//  MWKit
//
//  Created by MikeWang on 2020/4/18.
//  Copyright © 2020 MikeWang. All rights reserved.
//

#ifndef JKitDefine_h
#define JKitDefine_h

#ifndef    weakify
    #if __has_feature(objc_arc)

        #define weakify( x ) \\
        _Pragma("clang diagnostic push") \\
        _Pragma("clang diagnostic ignored \"-Wshadow\"") \\
        autoreleasepool{} __weak __typeof__(x) __weak_##x##__ = x; \\
        _Pragma("clang diagnostic pop")

    #else

        #define weakify( x ) \\
        _Pragma("clang diagnostic push") \\
        _Pragma("clang diagnostic ignored \"-Wshadow\"") \\
        autoreleasepool{} __block __typeof__(x) __block_##x##__ = x; \\
        _Pragma("clang diagnostic pop")

    #endif
#endif

#ifndef    strongify
    #if __has_feature(objc_arc)

        #define strongify( x ) \\
        _Pragma("clang diagnostic push") \\
        _Pragma("clang diagnostic ignored \"-Wshadow\"") \\
        try{} @finally{} __typeof__(x) x = __weak_##x##__; \\
        _Pragma("clang diagnostic pop")

    #else
        #define strongify( x ) \\
        _Pragma("clang diagnostic push") \\
        _Pragma("clang diagnostic ignored \"-Wshadow\"") \\
        try{} @finally{} __typeof__(x) x = __block_##x##__; \\
        _Pragma("clang diagnostic pop")

        #endif
#endif

#endif /* JKitDefine_h */
