//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/TreeCodec.java
//

#include "J2ObjC_source.h"
#include "com/fasterxml/jackson/core/JsonGenerator.h"
#include "com/fasterxml/jackson/core/JsonParser.h"
#include "com/fasterxml/jackson/core/TreeCodec.h"
#include "com/fasterxml/jackson/core/TreeNode.h"

@implementation ComFasterxmlJacksonCoreTreeCodec

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype __nonnull)init {
  ComFasterxmlJacksonCoreTreeCodec_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<ComFasterxmlJacksonCoreTreeNode>)readTreeWithComFasterxmlJacksonCoreJsonParser:(ComFasterxmlJacksonCoreJsonParser *)p {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)writeTreeWithComFasterxmlJacksonCoreJsonGenerator:(ComFasterxmlJacksonCoreJsonGenerator *)g
                      withComFasterxmlJacksonCoreTreeNode:(id<ComFasterxmlJacksonCoreTreeNode>)tree {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id<ComFasterxmlJacksonCoreTreeNode>)createArrayNode {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<ComFasterxmlJacksonCoreTreeNode>)createObjectNode {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ComFasterxmlJacksonCoreJsonParser *)treeAsTokensWithComFasterxmlJacksonCoreTreeNode:(id<ComFasterxmlJacksonCoreTreeNode>)node {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreTreeNode;", 0x401, 0, 1, 2, 3, -1, -1 },
    { NULL, "V", 0x401, 4, 5, 2, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreTreeNode;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreTreeNode;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComFasterxmlJacksonCoreJsonParser;", 0x401, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(readTreeWithComFasterxmlJacksonCoreJsonParser:);
  methods[2].selector = @selector(writeTreeWithComFasterxmlJacksonCoreJsonGenerator:withComFasterxmlJacksonCoreTreeNode:);
  methods[3].selector = @selector(createArrayNode);
  methods[4].selector = @selector(createObjectNode);
  methods[5].selector = @selector(treeAsTokensWithComFasterxmlJacksonCoreTreeNode:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "readTree", "LComFasterxmlJacksonCoreJsonParser;", "LJavaIoIOException;LComFasterxmlJacksonCoreJsonProcessingException;", "<T::Lcom/fasterxml/jackson/core/TreeNode;>(Lcom/fasterxml/jackson/core/JsonParser;)TT;", "writeTree", "LComFasterxmlJacksonCoreJsonGenerator;LComFasterxmlJacksonCoreTreeNode;", "treeAsTokens", "LComFasterxmlJacksonCoreTreeNode;" };
  static const J2ObjcClassInfo _ComFasterxmlJacksonCoreTreeCodec = { "TreeCodec", "com.fasterxml.jackson.core", ptrTable, methods, NULL, 7, 0x401, 6, 0, -1, -1, -1, -1, -1 };
  return &_ComFasterxmlJacksonCoreTreeCodec;
}

@end

void ComFasterxmlJacksonCoreTreeCodec_init(ComFasterxmlJacksonCoreTreeCodec *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComFasterxmlJacksonCoreTreeCodec)
