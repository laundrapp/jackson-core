//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/Versioned.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreVersioned")
#ifdef RESTRICT_ComFasterxmlJacksonCoreVersioned
#define INCLUDE_ALL_ComFasterxmlJacksonCoreVersioned 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreVersioned 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreVersioned

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreVersioned_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreVersioned || defined(INCLUDE_ComFasterxmlJacksonCoreVersioned))
#define ComFasterxmlJacksonCoreVersioned_

@class ComFasterxmlJacksonCoreVersion;

/*!
 @brief Interface that those Jackson components that are explicitly versioned will implement.
 Intention is to allow both plug-in components (custom extensions) and applications and
  frameworks that use Jackson to detect exact version of Jackson in use.
  This may be useful for example for ensuring that proper Jackson version is deployed
  (beyond mechanisms that deployment system may have), as well as for possible
  workarounds.
 */
@protocol ComFasterxmlJacksonCoreVersioned < JavaObject >

/*!
 @brief Method called to detect version of the component that implements this interface;
  returned version should never be null, but may return specific "not available"
  instance (see <code>Version</code> for details).
 */
- (ComFasterxmlJacksonCoreVersion *)version__;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreVersioned)

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreVersioned)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreVersioned")
