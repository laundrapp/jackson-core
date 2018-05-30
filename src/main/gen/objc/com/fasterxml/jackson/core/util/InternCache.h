//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/util/InternCache.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreUtilInternCache")
#ifdef RESTRICT_ComFasterxmlJacksonCoreUtilInternCache
#define INCLUDE_ALL_ComFasterxmlJacksonCoreUtilInternCache 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreUtilInternCache 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreUtilInternCache

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreUtilInternCache_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreUtilInternCache || defined(INCLUDE_ComFasterxmlJacksonCoreUtilInternCache))
#define ComFasterxmlJacksonCoreUtilInternCache_

#define RESTRICT_JavaUtilConcurrentConcurrentHashMap 1
#define INCLUDE_JavaUtilConcurrentConcurrentHashMap 1
#include "java/util/concurrent/ConcurrentHashMap.h"

@protocol JavaUtilFunctionBiFunction;
@protocol JavaUtilFunctionFunction;
@protocol JavaUtilMap;

/*!
 @brief Singleton class that adds a simple first-level cache in front of
  regular String.intern() functionality.This is done as a minor
  performance optimization, to avoid calling native intern() method
  in cases where same String is being interned multiple times.
 <p>
  Note: that this class extends <code>LinkedHashMap</code> is an implementation
  detail -- no code should ever directly call Map methods.
 */
@interface ComFasterxmlJacksonCoreUtilInternCache : JavaUtilConcurrentConcurrentHashMap

#pragma mark Public

- (NSString *)computeIfAbsentWithId:(NSString *)arg0
       withJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg1;

- (NSString *)computeIfPresentWithId:(NSString *)arg0
      withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg1;

- (NSString *)computeWithId:(NSString *)arg0
withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg1;

- (NSString *)getOrDefaultWithId:(id)arg0
                          withId:(NSString *)arg1;

- (NSString *)getWithId:(id)arg0;

- (NSString *)internWithNSString:(NSString *)input;

- (NSString *)mergeWithId:(NSString *)arg0
                   withId:(NSString *)arg1
withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg2;

- (NSString *)putIfAbsentWithId:(NSString *)arg0
                         withId:(NSString *)arg1;

- (NSString *)putWithId:(NSString *)arg0
                 withId:(NSString *)arg1;

- (NSString *)reduceKeysWithLong:(jlong)arg0
  withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg1;

- (NSString *)reduceValuesWithLong:(jlong)arg0
    withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg1;

- (NSString *)removeWithId:(id)arg0;

- (NSString *)replaceWithId:(NSString *)arg0
                     withId:(NSString *)arg1;

#pragma mark Package-Private

- (NSString *)putValWithId:(NSString *)arg0
                    withId:(NSString *)arg1
               withBoolean:(jboolean)arg2;

- (NSString *)replaceNodeWithId:(id)arg0
                         withId:(NSString *)arg1
                         withId:(id)arg2;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithInt:(jint)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0
                            withFloat:(jfloat)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0
                            withFloat:(jfloat)arg1
                              withInt:(jint)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(ComFasterxmlJacksonCoreUtilInternCache)

inline ComFasterxmlJacksonCoreUtilInternCache *ComFasterxmlJacksonCoreUtilInternCache_get_instance(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT ComFasterxmlJacksonCoreUtilInternCache *ComFasterxmlJacksonCoreUtilInternCache_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComFasterxmlJacksonCoreUtilInternCache, instance, ComFasterxmlJacksonCoreUtilInternCache *)

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreUtilInternCache)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreUtilInternCache")