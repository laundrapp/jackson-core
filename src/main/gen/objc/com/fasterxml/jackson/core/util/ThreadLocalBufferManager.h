//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/util/ThreadLocalBufferManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreUtilThreadLocalBufferManager")
#ifdef RESTRICT_ComFasterxmlJacksonCoreUtilThreadLocalBufferManager
#define INCLUDE_ALL_ComFasterxmlJacksonCoreUtilThreadLocalBufferManager 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCoreUtilThreadLocalBufferManager 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCoreUtilThreadLocalBufferManager

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComFasterxmlJacksonCoreUtilThreadLocalBufferManager_) && (INCLUDE_ALL_ComFasterxmlJacksonCoreUtilThreadLocalBufferManager || defined(INCLUDE_ComFasterxmlJacksonCoreUtilThreadLocalBufferManager))
#define ComFasterxmlJacksonCoreUtilThreadLocalBufferManager_

@class ComFasterxmlJacksonCoreUtilBufferRecycler;
@class JavaLangRefSoftReference;

/*!
 @brief For issue [jackson-core#400] We keep a separate Set of all SoftReferences to BufferRecyclers
  which are (also) referenced using `ThreadLocals`.
 We do this to be able to release them (dereference) in `releaseBuffers()` and `shutdown()`
  method to reduce heap consumption during hot reloading of services where otherwise 
 <code>ClassLoader</code> would have dangling reference via <code>ThreadLocal</code>s.
  When gc clears a SoftReference, it puts it on a newly introduced referenceQueue.
  We use this queue to release the inactive SoftReferences from the Set.
 @since 2.9.6
 */
@interface ComFasterxmlJacksonCoreUtilThreadLocalBufferManager : NSObject

#pragma mark Public

/*!
 @brief Returns the lazily initialized singleton instance
 */
+ (ComFasterxmlJacksonCoreUtilThreadLocalBufferManager *)instance;

/*!
 @brief Releases the buffers retained in ThreadLocals.To be called for instance on shutdown event of applications which make use of
  an environment like an appserver which stays alive and uses a thread pool that causes ThreadLocals created by the
  application to survive much longer than the application itself.
 It will clear all bufRecyclers from the SoftRefs and release all SoftRefs itself from our set.
 */
- (jint)releaseBuffers;

- (JavaLangRefSoftReference *)wrapAndTrackWithComFasterxmlJacksonCoreUtilBufferRecycler:(ComFasterxmlJacksonCoreUtilBufferRecycler *)br;

#pragma mark Package-Private

- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComFasterxmlJacksonCoreUtilThreadLocalBufferManager)

FOUNDATION_EXPORT void ComFasterxmlJacksonCoreUtilThreadLocalBufferManager_init(ComFasterxmlJacksonCoreUtilThreadLocalBufferManager *self);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreUtilThreadLocalBufferManager *new_ComFasterxmlJacksonCoreUtilThreadLocalBufferManager_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComFasterxmlJacksonCoreUtilThreadLocalBufferManager *create_ComFasterxmlJacksonCoreUtilThreadLocalBufferManager_init(void);

FOUNDATION_EXPORT ComFasterxmlJacksonCoreUtilThreadLocalBufferManager *ComFasterxmlJacksonCoreUtilThreadLocalBufferManager_instance(void);

J2OBJC_TYPE_LITERAL_HEADER(ComFasterxmlJacksonCoreUtilThreadLocalBufferManager)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCoreUtilThreadLocalBufferManager")
