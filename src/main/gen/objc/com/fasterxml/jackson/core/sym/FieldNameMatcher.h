//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/sym/FieldNameMatcher.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreSymFieldNameMatcher")
#ifdef RESTRICT_ComFasterxmlJacksonCoreSymFieldNameMatcher
#define INCLUDE_ALL_ComFasterxmlJacksonCoreSymFieldNameMatcher 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreSymFieldNameMatcher 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreSymFieldNameMatcher

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreSymFieldNameMatcher_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreSymFieldNameMatcher || defined(INCLUDE_ComFasterxmlJacksonCoreSymFieldNameMatcher))
#define ComFasterxmlJacksonCoreSymFieldNameMatcher_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class IOSIntArray;
@class IOSObjectArray;
@protocol ComFasterxmlJacksonCoreUtilNamed;
@protocol JavaUtilList;

/*!
 @brief Interface for implementations used for efficient matching of field names from
  input stream (via parser) to higher-level abstractions like properties that
  databind uses.Used to avoid two-phase lookups -- first from input stream to
  strings; then from strings to entities -- but details may heavily depend on
  format parser (some formats can optimize better than others).
 @since 3.0
 */
@interface ComFasterxmlJacksonCoreSymFieldNameMatcher : NSObject < JavaIoSerializable > {
 @public
  IOSObjectArray *_nameLookup_;
  ComFasterxmlJacksonCoreSymFieldNameMatcher *_backupMatcher_;
}

#pragma mark Public

- (jint)matchByQuadWithInt:(jint)q1;

- (jint)matchByQuadWithInt:(jint)q1
                   withInt:(jint)q2;

- (jint)matchByQuadWithInt:(jint)q1
                   withInt:(jint)q2
                   withInt:(jint)q3;

- (jint)matchByQuadWithIntArray:(IOSIntArray *)q
                        withInt:(jint)qlen;

/*!
 @brief Lookup method that does not assume name to be matched to be 
 <code>String.intern</code>ed (although passing interned String is likely
  to result in more efficient matching).
 */
- (jint)matchNameWithNSString:(NSString *)toMatch;

/*!
 @brief Accessor to names matching indexes, iff passed during construction.
 */
- (IOSObjectArray *)nameLookup;

+ (id<JavaUtilList>)stringsFromNamesWithJavaUtilList:(id<JavaUtilList>)fields
                                         withBoolean:(jboolean)alreadyInterned;

#pragma mark Protected

- (instancetype __nonnull)initWithComFasterxmlJacksonCoreSymFieldNameMatcher:(ComFasterxmlJacksonCoreSymFieldNameMatcher *)backup
                                                           withNSStringArray:(IOSObjectArray *)nameLookup;

+ (jint)_findSizeWithInt:(jint)size;

+ (NSString *)_fromNameWithComFasterxmlJacksonCoreUtilNamed:(id<ComFasterxmlJacksonCoreUtilNamed>)n
                                                withBoolean:(jboolean)alreadyInterned;

+ (jint)_hashWithInt:(jint)h
             withInt:(jint)mask;

+ (id<JavaUtilList>)_lcWithJavaUtilList:(id<JavaUtilList>)src;

/*!
 @brief Secondary lookup method used for matchers that operate with more complex
  matching rules, such as case-insensitive matchers.
 */
- (jint)matchSecondaryWithNSString:(NSString *)toMatch;

@end

J2OBJC_STATIC_INIT(ComFasterxmlJacksonCoreSymFieldNameMatcher)

J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreSymFieldNameMatcher, _nameLookup_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(ComFasterxmlJacksonCoreSymFieldNameMatcher, _backupMatcher_, ComFasterxmlJacksonCoreSymFieldNameMatcher *)

/*!
 @brief Marker for case where <code>JsonToken.END_OBJECT</code> encountered.
 */
inline jint ComFasterxmlJacksonCoreSymFieldNameMatcher_get_MATCH_END_OBJECT(void);
#define ComFasterxmlJacksonCoreSymFieldNameMatcher_MATCH_END_OBJECT -1
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreSymFieldNameMatcher, MATCH_END_OBJECT, jint)

/*!
 @brief Marker for case where field name encountered but not one of matches.
 */
inline jint ComFasterxmlJacksonCoreSymFieldNameMatcher_get_MATCH_UNKNOWN_NAME(void);
#define ComFasterxmlJacksonCoreSymFieldNameMatcher_MATCH_UNKNOWN_NAME -2
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreSymFieldNameMatcher, MATCH_UNKNOWN_NAME, jint)

/*!
 @brief Marker for case where token encountered is neither <code>FIELD_NAME</code>
  nor <code>END_OBJECT</code>.
 */
inline jint ComFasterxmlJacksonCoreSymFieldNameMatcher_get_MATCH_ODD_TOKEN(void);
#define ComFasterxmlJacksonCoreSymFieldNameMatcher_MATCH_ODD_TOKEN -3
J2OBJC_STATIC_FIELD_CONSTANT(ComFasterxmlJacksonCoreSymFieldNameMatcher, MATCH_ODD_TOKEN, jint)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreSymFieldNameMatcher_initWithComFasterxmlJacksonCoreSymFieldNameMatcher_withNSStringArray_(ComFasterxmlJacksonCoreSymFieldNameMatcher *self, ComFasterxmlJacksonCoreSymFieldNameMatcher *backup, IOSObjectArray *nameLookup);

FOUNDATION_EXPORT jint ComFasterxmlJacksonCoreSymFieldNameMatcher__hashWithInt_withInt_(jint h, jint mask);

FOUNDATION_EXPORT jint ComFasterxmlJacksonCoreSymFieldNameMatcher__findSizeWithInt_(jint size);

FOUNDATION_EXPORT id<JavaUtilList> ComFasterxmlJacksonCoreSymFieldNameMatcher_stringsFromNamesWithJavaUtilList_withBoolean_(id<JavaUtilList> fields, jboolean alreadyInterned);

FOUNDATION_EXPORT NSString *ComFasterxmlJacksonCoreSymFieldNameMatcher__fromNameWithComFasterxmlJacksonCoreUtilNamed_withBoolean_(id<ComFasterxmlJacksonCoreUtilNamed> n, jboolean alreadyInterned);

FOUNDATION_EXPORT id<JavaUtilList> ComFasterxmlJacksonCoreSymFieldNameMatcher__lcWithJavaUtilList_(id<JavaUtilList> src);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreSymFieldNameMatcher)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreSymFieldNameMatcher")
