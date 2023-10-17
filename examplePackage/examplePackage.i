%module example
%{
#include "jni/example.h"
%}

%insert(cgo_comment_typedefs)
%{
#cgo android,arm LDFLAGS: -L/libs/armeabi-v7a -lexample
#cgo android,arm64 LDFLAGS: -L/libs/arm64-v8a -lexample
#cgo android,386 LDFLAGS: -L/libs/x86 -lexample
#cgo android,amd64 LDFLAGS: -L/libs/x86_64 -lexample
%}

%include "jni/example.h"