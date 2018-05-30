//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/jackson-core/src/main/java/com/fasterxml/jackson/core/package-info.java
//

/*!
 @brief Main public API classes of the core streaming JSON
  processor: most importantly <code>com.fasterxml.jackson.core.JsonFactory</code>
  used for constructing
  JSON parser (<code>com.fasterxml.jackson.core.JsonParser</code>)
  and generator
  (<code>com.fasterxml.jackson.core.JsonGenerator</code>)
  instances.
 <p>
  Public API of the higher-level mapping interfaces ("Mapping API")
  is found from the "jackson-databind" bundle, except for following
  base interfaces that are defined here: 
 <ul>
 <li><code>com.fasterxml.jackson.core.TreeNode</code> is included
 within Streaming API to support integration of the Tree Model
 (which is based on <code>JsonNode</code>) with the basic
 parsers and generators (iff using mapping-supporting factory: which
 is part of Mapping API, not core)
   </li>
 <li><code>com.fasterxml.jackson.core.ObjectCodec</code> is included so that
   reference to the object capable of serializing/deserializing
   Objects to/from JSON (usually, <code>com.fasterxml.jackson.databind.ObjectMapper</code>)
   can be exposed, without adding direct dependency to implementation.  
 </li>
 </ul>
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComFasterxmlJacksonCorePackage_info")
#ifdef RESTRICT_ComFasterxmlJacksonCorePackage_info
#define INCLUDE_ALL_ComFasterxmlJacksonCorePackage_info 0
#else
#define INCLUDE_ALL_ComFasterxmlJacksonCorePackage_info 1
#endif
#undef RESTRICT_ComFasterxmlJacksonCorePackage_info

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComFasterxmlJacksonCorePackage_info")
