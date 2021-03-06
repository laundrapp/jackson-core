//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/type/TypeReference.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/type/TypeReference.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/reflect/ParameterizedType.h"
#include "java/lang/reflect/Type.h"

@implementation ComFasterxmlJacksonCoreTypeTypeReference

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  ComFasterxmlJacksonCoreTypeTypeReference_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<JavaLangReflectType>)getType {
  return _type_;
}

- (jint)compareToWithId:(ComFasterxmlJacksonCoreTypeTypeReference *)o {
  return 0;
}

- (void)dealloc {
  RELEASE_(_type_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangReflectType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getType);
  methods[2].selector = @selector(compareToWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_type_", "LJavaLangReflectType;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "compareTo", "LComFasterxmlJacksonCoreTypeTypeReference;", "(Lcom/fasterxml/jackson/core/type/TypeReference<TT;>;)I", "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/lang/Comparable<Lcom/fasterxml/jackson/core/type/TypeReference<TT;>;>;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreTypeTypeReference = { "TypeReference", "com.fasterxml.jackson.core.type", ptrTable, methods, fields, 7, 0x401, 3, 1, -1, -1, -1, 3, -1 };
  return &_ComFasterxmlJacksonCoreTypeTypeReference;
}

@end

void ComFasterxmlJacksonCoreTypeTypeReference_init(ComFasterxmlJacksonCoreTypeTypeReference *self) {
  NSObject_init(self);
  id<JavaLangReflectType> superClass = [[self java_getClass] getGenericSuperclass];
  if ([superClass isKindOfClass:[IOSClass class]]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Internal error: TypeReference constructed without actual type information");
  }
  JreStrongAssign(&self->_type_, IOSObjectArray_Get(nil_chk([((id<JavaLangReflectParameterizedType>) nil_chk(((id<JavaLangReflectParameterizedType>) cast_check(superClass, JavaLangReflectParameterizedType_class_())))) getActualTypeArguments]), 0));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreTypeTypeReference)
