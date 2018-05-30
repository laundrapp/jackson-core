//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/type/ResolvedType.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/type/ResolvedType.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"

__attribute__((unused)) static IOSObjectArray *ComFasterxmlJacksonCoreTypeResolvedType__Annotations$0(void);

@implementation ComFasterxmlJacksonCoreTypeResolvedType

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  ComFasterxmlJacksonCoreTypeResolvedType_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (IOSClass *)getRawClass {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)hasRawClassWithIOSClass:(IOSClass *)clz {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isAbstract {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isConcrete {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isThrowable {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isArrayType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isEnumType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isInterface {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isPrimitive {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isFinal {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isContainerType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isCollectionLikeType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isReferenceType {
  return [self getReferencedType] != nil;
}

- (jboolean)isMapLikeType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)hasGenericTypes {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (IOSClass *)getParameterSource {
  return nil;
}

- (ComFasterxmlJacksonCoreTypeResolvedType *)getKeyType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ComFasterxmlJacksonCoreTypeResolvedType *)getContentType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ComFasterxmlJacksonCoreTypeResolvedType *)getReferencedType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)containedTypeCount {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ComFasterxmlJacksonCoreTypeResolvedType *)containedTypeWithInt:(jint)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)containedTypeNameWithInt:(jint)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)toCanonical {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LIOSClass;", 0x401, -1, -1, -1, 0, -1, -1 },
    { NULL, "Z", 0x401, 1, 2, -1, 3, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LIOSClass;", 0x1, -1, -1, -1, 0, 4, -1 },
    { NULL, "LComFasterxmlJacksonCoreTypeResolvedType;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreTypeResolvedType;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreTypeResolvedType;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreTypeResolvedType;", 0x401, 5, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 7, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getRawClass);
  methods[2].selector = @selector(hasRawClassWithIOSClass:);
  methods[3].selector = @selector(isAbstract);
  methods[4].selector = @selector(isConcrete);
  methods[5].selector = @selector(isThrowable);
  methods[6].selector = @selector(isArrayType);
  methods[7].selector = @selector(isEnumType);
  methods[8].selector = @selector(isInterface);
  methods[9].selector = @selector(isPrimitive);
  methods[10].selector = @selector(isFinal);
  methods[11].selector = @selector(isContainerType);
  methods[12].selector = @selector(isCollectionLikeType);
  methods[13].selector = @selector(isReferenceType);
  methods[14].selector = @selector(isMapLikeType);
  methods[15].selector = @selector(hasGenericTypes);
  methods[16].selector = @selector(getParameterSource);
  methods[17].selector = @selector(getKeyType);
  methods[18].selector = @selector(getContentType);
  methods[19].selector = @selector(getReferencedType);
  methods[20].selector = @selector(containedTypeCount);
  methods[21].selector = @selector(containedTypeWithInt:);
  methods[22].selector = @selector(containedTypeNameWithInt:);
  methods[23].selector = @selector(toCanonical);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "()Ljava/lang/Class<*>;", "hasRawClass", "LIOSClass;", "(Ljava/lang/Class<*>;)Z", (void *)&ComFasterxmlJacksonCoreTypeResolvedType__Annotations$0, "containedType", "I", "containedTypeName" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreTypeResolvedType = { "ResolvedType", "com.fasterxml.jackson.core.type", ptrTable, methods, NULL, 7, 0x401, 24, 0, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreTypeResolvedType;
}

@end

void ComFasterxmlJacksonCoreTypeResolvedType_init(ComFasterxmlJacksonCoreTypeResolvedType *self) {
  NSObject_init(self);
}

IOSObjectArray *ComFasterxmlJacksonCoreTypeResolvedType__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreTypeResolvedType)
