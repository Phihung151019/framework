.class public final Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
.super Ljava/lang/Object;
.source "NnApiDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/nnapi/NnApiDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# static fields
.field public static final EXECUTION_PREFERENCE_FAST_SINGLE_ANSWER:I = 0x1

.field public static final EXECUTION_PREFERENCE_LOW_POWER:I = 0x0

.field public static final EXECUTION_PREFERENCE_SUSTAINED_SPEED:I = 0x2

.field public static final EXECUTION_PREFERENCE_UNDEFINED:I = -0x1


# instance fields
.field accelerator_name:Ljava/lang/String;

.field cache_dir:Ljava/lang/String;

.field executionPreference:I

.field model_token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->executionPreference:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->accelerator_name:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->cache_dir:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->model_token:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public setAcceleratorName(Ljava/lang/String;)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->accelerator_name:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setCacheDir(Ljava/lang/String;)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->cache_dir:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public setExecutionPreference(I)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0
    .param p1, "preference"    # I

    .line 63
    iput p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->executionPreference:I

    .line 64
    return-object p0
.end method

.method public setModelToken(Ljava/lang/String;)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->model_token:Ljava/lang/String;

    .line 79
    return-object p0
.end method
