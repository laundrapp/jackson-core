//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/FormatFeature.java
//

#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/FormatFeature.h"

@interface ComFasterxmlJacksonCoreFormatFeature : NSObject

@end

@implementation ComFasterxmlJacksonCoreFormatFeature

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(enabledByDefault);
  methods[1].selector = @selector(getMask);
  methods[2].selector = @selector(enabledInWithInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "enabledIn", "I" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreFormatFeature = { "FormatFeature", "com.fasterxml.jackson.core", ptrTable, methods, NULL, 7, 0x609, 3, 0, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreFormatFeature;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreFormatFeature)
