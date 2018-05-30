//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/JsonpCharacterEscapes.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonpCharacterEscapes")
#ifdef RESTRICT_ComFasterxmlJacksonCoreJsonpCharacterEscapes
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonpCharacterEscapes 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreJsonpCharacterEscapes 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreJsonpCharacterEscapes

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreJsonpCharacterEscapes_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreJsonpCharacterEscapes || defined(INCLUDE_ComFasterxmlJacksonCoreJsonpCharacterEscapes))
#define ComFasterxmlJacksonCoreJsonpCharacterEscapes_

#define RESTRICT_ComFasterxmlJacksonCoreIoCharacterEscapes 1
#define INCLUDE_ComFasterxmlJacksonCoreIoCharacterEscapes 1
#include "com/fasterxml/jackson/core/io/CharacterEscapes.h"

@class IOSIntArray;
@protocol ComFasterxmlJacksonCoreSerializableString;

/*!
 @brief Convenience <code>CharacterEscapes</code> implementation that escapes
  Unicode characters `0x2028` and `0x2029` (in addition to characters
  escaped otherwise), which are apparently considered linefeeds as
  per newer Javascript specifications, and consequently problematic
  when using JSONP (see https://en.wikipedia.org/wiki/JSONP).
 @since 2.8
 */
@interface ComFasterxmlJacksonCoreJsonpCharacterEscapes : ComFasterxmlJacksonCoreIoCharacterEscapes

#pragma mark Public

- (instancetype __nonnull)init;

- (IOSIntArray *)getEscapeCodesForAscii;

- (id<ComFasterxmlJacksonCoreSerializableString>)getEscapeSequenceWithInt:(jint)ch;

+ (ComFasterxmlJacksonCoreJsonpCharacterEscapes *)instance;

@end

J2OBJC_STATIC_INIT(ComFasterxmlJacksonCoreJsonpCharacterEscapes)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreJsonpCharacterEscapes_init(ComFasterxmlJacksonCoreJsonpCharacterEscapes *self);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonpCharacterEscapes *new_ComFasterxmlJacksonCoreJsonpCharacterEscapes_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonpCharacterEscapes *create_ComFasterxmlJacksonCoreJsonpCharacterEscapes_init(void);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreJsonpCharacterEscapes *ComFasterxmlJacksonCoreJsonpCharacterEscapes_instance(void);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreJsonpCharacterEscapes)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreJsonpCharacterEscapes")
