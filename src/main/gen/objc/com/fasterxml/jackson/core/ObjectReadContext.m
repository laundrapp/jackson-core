//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/ObjectReadContext.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/FormatSchema.h"
#include "com/fasterxml/jackson/core/JsonParser.h"
#include "com/fasterxml/jackson/core/ObjectReadContext.h"
#include "com/fasterxml/jackson/core/TokenStreamFactory.h"
#include "com/fasterxml/jackson/core/TreeNode.h"
#include "com/fasterxml/jackson/core/tree/ArrayTreeNode.h"
#include "com/fasterxml/jackson/core/tree/ObjectTreeNode.h"
#include "com/fasterxml/jackson/core/type/ResolvedType.h"
#include "com/fasterxml/jackson/core/type/TypeReference.h"
#include "java/io/InputStream.h"
#include "java/io/Reader.h"
#include "java/lang/UnsupportedOperationException.h"

@implementation ComFasterxmlJacksonCoreObjectReadContext

+ (id<ComFasterxmlJacksonCoreObjectReadContext>)empty {
  return ComFasterxmlJacksonCoreObjectReadContext_empty();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComFasterxmlJacksonCoreObjectReadContext;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreFormatSchema;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 2, 1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreTokenStreamFactory;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, 3, 4, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, 3, 6, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, 3, 7, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, 3, 8, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, 3, 9, 5, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreTreeArrayTreeNode;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreTreeObjectTreeNode;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreTreeNode;", 0x401, 10, 11, 5, 12, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x401, 15, 16, 5, 17, -1, -1 },
    { NULL, "LNSObject;", 0x401, 15, 18, 5, 19, -1, -1 },
    { NULL, "LNSObject;", 0x401, 15, 20, 5, 21, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(empty);
  methods[1].selector = @selector(getSchema);
  methods[2].selector = @selector(getParserFeaturesWithInt:);
  methods[3].selector = @selector(getFormatReadFeaturesWithInt:);
  methods[4].selector = @selector(getParserFactory);
  methods[5].selector = @selector(createParserWithJavaIoInputStream:);
  methods[6].selector = @selector(createParserWithJavaIoReader:);
  methods[7].selector = @selector(createParserWithNSString:);
  methods[8].selector = @selector(createParserWithByteArray:);
  methods[9].selector = @selector(createParserWithByteArray:withInt:withInt:);
  methods[10].selector = @selector(createArrayNode);
  methods[11].selector = @selector(createObjectNode);
  methods[12].selector = @selector(readTreeWithComFasterxmlJacksonCoreJsonParser:);
  methods[13].selector = @selector(treeAsTokensWithComFasterxmlJacksonCoreTreeNode:);
  methods[14].selector = @selector(readValueWithComFasterxmlJacksonCoreJsonParser:withIOSClass:);
  methods[15].selector = @selector(readValueWithComFasterxmlJacksonCoreJsonParser:withComFasterxmlJacksonCoreTypeTypeReference:);
  methods[16].selector = @selector(readValueWithComFasterxmlJacksonCoreJsonParser:withComFasterxmlJacksonCoreTypeResolvedType:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getParserFeatures", "I", "getFormatReadFeatures", "createParser", "LJavaIoInputStream;", "LJavaIoIOException;", "LJavaIoReader;", "LNSString;", "[B", "[BII", "readTree", "LComFasterxmlJacksonCoreJsonParser;", "<T::Lcom/fasterxml/jackson/core/TreeNode;>(Lcom/fasterxml/jackson/core/JsonParser;)TT;", "treeAsTokens", "LComFasterxmlJacksonCoreTreeNode;", "readValue", "LComFasterxmlJacksonCoreJsonParser;LIOSClass;", "<T:Ljava/lang/Object;>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class<TT;>;)TT;", "LComFasterxmlJacksonCoreJsonParser;LComFasterxmlJacksonCoreTypeTypeReference;", "<T:Ljava/lang/Object;>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference<*>;)TT;", "LComFasterxmlJacksonCoreJsonParser;LComFasterxmlJacksonCoreTypeResolvedType;", "<T:Ljava/lang/Object;>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/ResolvedType;)TT;", "LComFasterxmlJacksonCoreObjectReadContext_Base;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreObjectReadContext = { "ObjectReadContext", "com.fasterxml.jackson.core", ptrTable, methods, NULL, 7, 0x609, 17, 0, -1, 22, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreObjectReadContext;
}

@end

id<ComFasterxmlJacksonCoreObjectReadContext> ComFasterxmlJacksonCoreObjectReadContext_empty() {
  ComFasterxmlJacksonCoreObjectReadContext_initialize();
  return JreLoadStatic(ComFasterxmlJacksonCoreObjectReadContext_Base, EMPTY_CONTEXT);
}

ComFasterxmlJacksonCoreJsonParser *ComFasterxmlJacksonCoreObjectReadContext_createParserWithJavaIoInputStream_(id<ComFasterxmlJacksonCoreObjectReadContext> self, JavaIoInputStream *inArg) {
  return [((ComFasterxmlJacksonCoreTokenStreamFactory *) nil_chk([self getParserFactory])) createParserWithComFasterxmlJacksonCoreObjectReadContext:self withJavaIoInputStream:inArg];
}

ComFasterxmlJacksonCoreJsonParser *ComFasterxmlJacksonCoreObjectReadContext_createParserWithJavaIoReader_(id<ComFasterxmlJacksonCoreObjectReadContext> self, JavaIoReader *r) {
  return [((ComFasterxmlJacksonCoreTokenStreamFactory *) nil_chk([self getParserFactory])) createParserWithComFasterxmlJacksonCoreObjectReadContext:self withJavaIoReader:r];
}

ComFasterxmlJacksonCoreJsonParser *ComFasterxmlJacksonCoreObjectReadContext_createParserWithNSString_(id<ComFasterxmlJacksonCoreObjectReadContext> self, NSString *content) {
  return [((ComFasterxmlJacksonCoreTokenStreamFactory *) nil_chk([self getParserFactory])) createParserWithComFasterxmlJacksonCoreObjectReadContext:self withNSString:content];
}

ComFasterxmlJacksonCoreJsonParser *ComFasterxmlJacksonCoreObjectReadContext_createParserWithByteArray_(id<ComFasterxmlJacksonCoreObjectReadContext> self, IOSByteArray *content) {
  return [((ComFasterxmlJacksonCoreTokenStreamFactory *) nil_chk([self getParserFactory])) createParserWithComFasterxmlJacksonCoreObjectReadContext:self withByteArray:content];
}

ComFasterxmlJacksonCoreJsonParser *ComFasterxmlJacksonCoreObjectReadContext_createParserWithByteArray_withInt_withInt_(id<ComFasterxmlJacksonCoreObjectReadContext> self, IOSByteArray *content, jint offset, jint length) {
  return [((ComFasterxmlJacksonCoreTokenStreamFactory *) nil_chk([self getParserFactory])) createParserWithComFasterxmlJacksonCoreObjectReadContext:self withByteArray:content withInt:offset withInt:length];
}

ComFasterxmlJacksonCoreJsonParser *ComFasterxmlJacksonCoreObjectReadContext_treeAsTokensWithComFasterxmlJacksonCoreTreeNode_(id<ComFasterxmlJacksonCoreObjectReadContext> self, id<ComFasterxmlJacksonCoreTreeNode> n) {
  return [((id<ComFasterxmlJacksonCoreTreeNode>) nil_chk(n)) traverseWithComFasterxmlJacksonCoreObjectReadContext:self];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreObjectReadContext)

J2OBJC_INITIALIZED_DEFN(ComFasterxmlJacksonCoreObjectReadContext_Base)

ComFasterxmlJacksonCoreObjectReadContext_Base *ComFasterxmlJacksonCoreObjectReadContext_Base_EMPTY_CONTEXT;

@implementation ComFasterxmlJacksonCoreObjectReadContext_Base

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  ComFasterxmlJacksonCoreObjectReadContext_Base_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<ComFasterxmlJacksonCoreFormatSchema>)getSchema {
  return nil;
}

- (jint)getParserFeaturesWithInt:(jint)defaults {
  return defaults;
}

- (jint)getFormatReadFeaturesWithInt:(jint)defaults {
  return defaults;
}

- (ComFasterxmlJacksonCoreTokenStreamFactory *)getParserFactory {
  return [self _reportUnsupportedOperation];
}

- (id<ComFasterxmlJacksonCoreTreeObjectTreeNode>)createObjectNode {
  return [self _reportUnsupportedOperation];
}

- (id<ComFasterxmlJacksonCoreTreeArrayTreeNode>)createArrayNode {
  return [self _reportUnsupportedOperation];
}

- (id<ComFasterxmlJacksonCoreTreeNode>)readTreeWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)p {
  return [self _reportUnsupportedOperation];
}

- (id)readValueWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)p
                                        withIOSClass:(IOSClass *)valueType {
  return [self _reportUnsupportedOperation];
}

- (id)readValueWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)p
        withComFasterxmlJacksonCoreTypeTypeReference:(ComFasterxmlJacksonCoreTypeTypeReference *)valueTypeRef {
  return [self _reportUnsupportedOperation];
}

- (id)readValueWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)p
         withComFasterxmlJacksonCoreTypeResolvedType:(ComFasterxmlJacksonCoreTypeResolvedType *)type {
  return [self _reportUnsupportedOperation];
}

- (id)_reportUnsupportedOperation {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(JreStrcat("$$", @"Operation not supported by `ObjectReadContext` of type ", [[self java_getClass] getName]));
}

- (ComFasterxmlJacksonCoreJsonParser *)createParserWithJavaIoInputStream:(JavaIoInputStream *)arg0 {
  return ComFasterxmlJacksonCoreObjectReadContext_createParserWithJavaIoInputStream_(self, arg0);
}

- (ComFasterxmlJacksonCoreJsonParser *)createParserWithJavaIoReader:(JavaIoReader *)arg0 {
  return ComFasterxmlJacksonCoreObjectReadContext_createParserWithJavaIoReader_(self, arg0);
}

- (ComFasterxmlJacksonCoreJsonParser *)createParserWithNSString:(NSString *)arg0 {
  return ComFasterxmlJacksonCoreObjectReadContext_createParserWithNSString_(self, arg0);
}

- (ComFasterxmlJacksonCoreJsonParser *)createParserWithByteArray:(IOSByteArray *)arg0 {
  return ComFasterxmlJacksonCoreObjectReadContext_createParserWithByteArray_(self, arg0);
}

- (ComFasterxmlJacksonCoreJsonParser *)createParserWithByteArray:(IOSByteArray *)arg0
                                                         withInt:(jint)arg1
                                                         withInt:(jint)arg2 {
  return ComFasterxmlJacksonCoreObjectReadContext_createParserWithByteArray_withInt_withInt_(self, arg0, arg1, arg2);
}

- (ComFasterxmlJacksonCoreJsonParser *)treeAsTokensWithComFasterxmlJacksonCoreTreeNode:(id<ComFasterxmlJacksonCoreTreeNode>)arg0 {
  return ComFasterxmlJacksonCoreObjectReadContext_treeAsTokensWithComFasterxmlJacksonCoreTreeNode_(self, arg0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreFormatSchema;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreTokenStreamFactory;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreTreeObjectTreeNode;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreTreeArrayTreeNode;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreTreeNode;", 0x1, 3, 4, 5, 6, -1, -1 },
    { NULL, "LNSObject;", 0x1, 7, 8, 5, 9, -1, -1 },
    { NULL, "LNSObject;", 0x1, 7, 10, 5, 11, -1, -1 },
    { NULL, "LNSObject;", 0x1, 7, 12, 5, 13, -1, -1 },
    { NULL, "LNSObject;", 0x4, -1, -1, -1, 14, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getSchema);
  methods[2].selector = @selector(getParserFeaturesWithInt:);
  methods[3].selector = @selector(getFormatReadFeaturesWithInt:);
  methods[4].selector = @selector(getParserFactory);
  methods[5].selector = @selector(createObjectNode);
  methods[6].selector = @selector(createArrayNode);
  methods[7].selector = @selector(readTreeWithComFasterxmlJacksonCoreJsonParser:);
  methods[8].selector = @selector(readValueWithComFasterxmlJacksonCoreJsonParser:withIOSClass:);
  methods[9].selector = @selector(readValueWithComFasterxmlJacksonCoreJsonParser:withComFasterxmlJacksonCoreTypeTypeReference:);
  methods[10].selector = @selector(readValueWithComFasterxmlJacksonCoreJsonParser:withComFasterxmlJacksonCoreTypeResolvedType:);
  methods[11].selector = @selector(_reportUnsupportedOperation);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "EMPTY_CONTEXT", "LComFasterxmlJacksonCoreObjectReadContext_Base;", .constantValue.asLong = 0, 0xc, -1, 15, -1, -1 },
  };
  static const void *ptrTable[] = { "getParserFeatures", "I", "getFormatReadFeatures", "readTree", "LComFasterxmlJacksonCoreJsonParser;", "LJavaIoIOException;", "<T::Lcom/fasterxml/jackson/core/TreeNode;>(Lcom/fasterxml/jackson/core/JsonParser;)TT;", "readValue", "LComFasterxmlJacksonCoreJsonParser;LIOSClass;", "<T:Ljava/lang/Object;>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class<TT;>;)TT;", "LComFasterxmlJacksonCoreJsonParser;LComFasterxmlJacksonCoreTypeTypeReference;", "<T:Ljava/lang/Object;>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference<*>;)TT;", "LComFasterxmlJacksonCoreJsonParser;LComFasterxmlJacksonCoreTypeResolvedType;", "<T:Ljava/lang/Object;>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/ResolvedType;)TT;", "<T:Ljava/lang/Object;>()TT;", &ComFasterxmlJacksonCoreObjectReadContext_Base_EMPTY_CONTEXT, "LComFasterxmlJacksonCoreObjectReadContext;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreObjectReadContext_Base = { "Base", "com.fasterxml.jackson.core", ptrTable, methods, fields, 7, 0x9, 12, 1, 16, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreObjectReadContext_Base;
}

+ (void)initialize {
  if (self == [ComFasterxmlJacksonCoreObjectReadContext_Base class]) {
    JreStrongAssignAndConsume(&ComFasterxmlJacksonCoreObjectReadContext_Base_EMPTY_CONTEXT, new_ComFasterxmlJacksonCoreObjectReadContext_Base_init());
    J2OBJC_SET_INITIALIZED(ComFasterxmlJacksonCoreObjectReadContext_Base)
  }
}

@end

void ComFasterxmlJacksonCoreObjectReadContext_Base_init(ComFasterxmlJacksonCoreObjectReadContext_Base *self) {
  NSObject_init(self);
}

ComFasterxmlJacksonCoreObjectReadContext_Base *new_ComFasterxmlJacksonCoreObjectReadContext_Base_init() {
  J2OBJC_NEW_IMPL(ComFasterxmlJacksonCoreObjectReadContext_Base, init)
}

ComFasterxmlJacksonCoreObjectReadContext_Base *create_ComFasterxmlJacksonCoreObjectReadContext_Base_init() {
  J2OBJC_CREATE_IMPL(ComFasterxmlJacksonCoreObjectReadContext_Base, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreObjectReadContext_Base)
