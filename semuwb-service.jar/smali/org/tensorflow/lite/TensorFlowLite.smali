.class public final Lorg/tensorflow/lite/TensorFlowLite;
.super Ljava/lang/Object;
.source "TensorFlowLite.java"


# static fields
.field private static final LIBNAME:Ljava/lang/String; = "tflite_uwb_jni"

.field private static final LOAD_LIBRARY_EXCEPTION:Ljava/lang/Throwable;

.field private static volatile isInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lorg/tensorflow/lite/TensorFlowLite;->isInit:Z

    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "loadLibraryException":Ljava/lang/Throwable;
    :try_start_0
    const-string v1, "tflite_uwb_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    move-object v0, v1

    .line 35
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    sput-object v0, Lorg/tensorflow/lite/TensorFlowLite;->LOAD_LIBRARY_EXCEPTION:Ljava/lang/Throwable;

    .line 36
    .end local v0    # "loadLibraryException":Ljava/lang/Throwable;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 5

    .line 68
    sget-boolean v0, Lorg/tensorflow/lite/TensorFlowLite;->isInit:Z

    if-eqz v0, :cond_0

    .line 69
    return-void

    .line 75
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->nativeRuntimeVersion()Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lorg/tensorflow/lite/TensorFlowLite;->isInit:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .line 86
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lorg/tensorflow/lite/TensorFlowLite;->LOAD_LIBRARY_EXCEPTION:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/tensorflow/lite/TensorFlowLite;->LOAD_LIBRARY_EXCEPTION:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 80
    .local v1, "exceptionToLog":Ljava/lang/Throwable;
    :goto_0
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load native TensorFlow Lite methods. Check that the correct native libraries are present, and, if using a custom native library, have been properly loaded via System.loadLibrary():\n  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static native nativeRuntimeVersion()Ljava/lang/String;
.end method

.method public static native nativeSchemaVersion()Ljava/lang/String;
.end method

.method public static runtimeVersion()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->init()V

    .line 53
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->nativeRuntimeVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static schemaVersion()Ljava/lang/String;
    .locals 1

    .line 58
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->init()V

    .line 59
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->nativeSchemaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static version()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->schemaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
