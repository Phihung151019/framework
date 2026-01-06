.class public Lcom/samsung/android/knox/sdp/SdpErrno;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist ERROR_COMPROMISED:I = -0xe

.field public static final greylist ERROR_ENGINE_ACCESS_DENIED:I = -0x7

.field public static final greylist ERROR_ENGINE_ALREADY_EXISTS:I = -0x4

.field public static final greylist ERROR_ENGINE_LOCKED:I = -0x6

.field public static final greylist ERROR_ENGINE_NOT_EXISTS:I = -0x5

.field public static final greylist ERROR_ENGINE_THROTTLED:I = -0x8

.field public static final greylist ERROR_FAILED:I = -0x63

.field public static final greylist ERROR_FILE_IO:I = -0xc

.field public static final greylist ERROR_INTERNAL:I = -0x63

.field public static final greylist ERROR_INVALID_PARAMETER:I = -0x3

.field public static final greylist ERROR_INVALID_PASSWORD:I = -0x1

.field public static final greylist ERROR_INVALID_RESET_TOKEN:I = -0x2

.field public static final greylist ERROR_LICENSE_REQUIRED:I = -0x9

.field public static final greylist ERROR_NATIVE:I = -0xb

.field public static final greylist ERROR_NONE:I = 0x0

.field public static final greylist ERROR_NOT_SUPPORTED_DEVICE:I = -0xa

.field public static final greylist ERROR_SERVICE_NOT_FOUND:I = -0xd

.field public static final greylist SUCCESS:I


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist toString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, -0x63

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown error"

    return-object p0

    :pswitch_0
    const-string p0, "No error"

    return-object p0

    :pswitch_1
    const-string p0, "Invalid password"

    return-object p0

    :pswitch_2
    const-string p0, "Invalid reset token"

    return-object p0

    :pswitch_3
    const-string p0, "Invalid parameter"

    return-object p0

    :pswitch_4
    const-string p0, "SDP engine already exists"

    return-object p0

    :pswitch_5
    const-string p0, "SDP engine does not exist"

    return-object p0

    :pswitch_6
    const-string p0, "SDP engine is locked"

    return-object p0

    :pswitch_7
    const-string p0, "SDP engine access denied"

    return-object p0

    :pswitch_8
    const-string p0, "SDP engine is throttled"

    return-object p0

    :pswitch_9
    const-string p0, "License required"

    return-object p0

    :pswitch_a
    const-string p0, "SDP not supported device"

    return-object p0

    :cond_0
    :pswitch_b
    const-string p0, "Internal error occurred"

    return-object p0

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
