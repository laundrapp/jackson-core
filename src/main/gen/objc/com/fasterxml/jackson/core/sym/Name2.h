//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/sym/Name2.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreSymName2")
#ifdef RESTRICT_ComFasterxmlJacksonCoreSymName2
#define INCLUDE_ALL_ComFasterxmlJacksonCoreSymName2 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreSymName2 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreSymName2

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreSymName2_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreSymName2 || defined(INCLUDE_ComFasterxmlJacksonCoreSymName2))
#define ComFasterxmlJacksonCoreSymName2_

#define RESTRICT_ComFasterxmlJacksonCoreSymName 1
#define INCLUDE_ComFasterxmlJacksonCoreSymName 1
#include "com/fasterxml/jackson/core/sym/Name.h"

@class IOSIntArray;

/*!
 @brief Specialized implementation of PName: can be used for short Strings
  that consists of 5 to 8 bytes.Usually this means relatively short
  ascii-only names.
 <p>
  The reason for such specialized classes is mostly space efficiency;
  and to a lesser degree performance. Both are achieved for short
  Strings by avoiding another level of indirection (via quad arrays)
 */
@interface ComFasterxmlJacksonCoreSymName2 : ComFasterxmlJacksonCoreSymName

#pragma mark Public

- (jboolean)equalsWithInt:(jint)quad;

- (jboolean)equalsWithInt:(jint)quad1
                  withInt:(jint)quad2;

- (jboolean)equalsWithInt:(jint)quad1
                  withInt:(jint)quad2
                  withInt:(jint)q3;

- (jboolean)equalsWithIntArray:(IOSIntArray *)quads
                       withInt:(jint)qlen;

#pragma mark Package-Private

- (instancetype __nonnull)initWithNSString:(NSString *)name
                                   withInt:(jint)hash_
                                   withInt:(jint)quad1
                                   withInt:(jint)quad2;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                                   withInt:(jint)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreSymName2)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreSymName2_initWithNSString_withInt_withInt_withInt_(ComFasterxmlJacksonCoreSymName2 *self, NSString *name, jint hash_, jint quad1, jint quad2);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreSymName2 *new_ComFasterxmlJacksonCoreSymName2_initWithNSString_withInt_withInt_withInt_(NSString *name, jint hash_, jint quad1, jint quad2) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreSymName2 *create_ComFasterxmlJacksonCoreSymName2_initWithNSString_withInt_withInt_withInt_(NSString *name, jint hash_, jint quad1, jint quad2);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreSymName2)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreSymName2")