//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/io/CharTypes.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreIoCharTypes")
#ifdef RESTRICT_ComFasterxmlJacksonCoreIoCharTypes
#define INCLUDE_ALL_ComFasterxmlJacksonCoreIoCharTypes 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreIoCharTypes 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreIoCharTypes

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreIoCharTypes_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreIoCharTypes || defined(INCLUDE_ComFasterxmlJacksonCoreIoCharTypes))
#define ComFasterxmlJacksonCoreIoCharTypes_

@class IOSByteArray;
@class IOSCharArray;
@class IOSIntArray;
@class JavaLangStringBuilder;

@interface ComFasterxmlJacksonCoreIoCharTypes : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (void)appendQuotedWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb
                                 withNSString:(NSString *)content;

+ (jint)charToHexWithInt:(jint)ch;

+ (IOSByteArray *)copyHexBytes OBJC_METHOD_FAMILY_NONE;

+ (IOSCharArray *)copyHexChars OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Accessor for getting a read-only encoding table for first 128 Unicode
  code points (single-byte UTF-8 characters).
 Value of 0 means "no escaping"; other positive values that value is character
  to use after backslash; and negative values that generic (backslash - u)
  escaping is to be used.
 */
+ (IOSIntArray *)get7BitOutputEscapes;

+ (IOSIntArray *)getInputCodeComment;

+ (IOSIntArray *)getInputCodeLatin1;

+ (IOSIntArray *)getInputCodeLatin1JsNames;

+ (IOSIntArray *)getInputCodeUtf8;

+ (IOSIntArray *)getInputCodeUtf8JsNames;

+ (IOSIntArray *)getInputCodeWS;

@end

J2OBJC_STATIC_INIT(ComFasterxmlJacksonCoreIoCharTypes)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreIoCharTypes_init(ComFasterxmlJacksonCoreIoCharTypes *self);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreIoCharTypes *new_ComFasterxmlJacksonCoreIoCharTypes_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreIoCharTypes *create_ComFasterxmlJacksonCoreIoCharTypes_init(void);

FOUNDATION_EXPORT IOSIntArray *ComFasterxmlJacksonCoreIoCharTypes_getInputCodeLatin1(void);

FOUNDATION_EXPORT IOSIntArray *ComFasterxmlJacksonCoreIoCharTypes_getInputCodeUtf8(void);

FOUNDATION_EXPORT IOSIntArray *ComFasterxmlJacksonCoreIoCharTypes_getInputCodeLatin1JsNames(void);

FOUNDATION_EXPORT IOSIntArray *ComFasterxmlJacksonCoreIoCharTypes_getInputCodeUtf8JsNames(void);

FOUNDATION_EXPORT IOSIntArray *ComFasterxmlJacksonCoreIoCharTypes_getInputCodeComment(void);

FOUNDATION_EXPORT IOSIntArray *ComFasterxmlJacksonCoreIoCharTypes_getInputCodeWS(void);

FOUNDATION_EXPORT IOSIntArray *ComFasterxmlJacksonCoreIoCharTypes_get7BitOutputEscapes(void);

FOUNDATION_EXPORT jint ComFasterxmlJacksonCoreIoCharTypes_charToHexWithInt_(jint ch);

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreIoCharTypes_appendQuotedWithJavaLangStringBuilder_withNSString_(JavaLangStringBuilder *sb, NSString *content);

FOUNDATION_EXPORT IOSCharArray *ComFasterxmlJacksonCoreIoCharTypes_copyHexChars(void);

FOUNDATION_EXPORT IOSByteArray *ComFasterxmlJacksonCoreIoCharTypes_copyHexBytes(void);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreIoCharTypes)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreIoCharTypes")
