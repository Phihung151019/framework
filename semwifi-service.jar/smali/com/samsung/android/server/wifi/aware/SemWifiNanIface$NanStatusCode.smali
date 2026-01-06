.class public Lcom/samsung/android/server/wifi/aware/SemWifiNanIface$NanStatusCode;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/aware/SemWifiNanIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NanStatusCode"
.end annotation


# static fields
.field public static final ALREADY_ENABLED:I = 0xa

.field public static final FOLLOWUP_TX_QUEUE_FULL:I = 0xb

.field public static final INTERNAL_FAILURE:I = 0x1

.field public static final INVALID_ARGS:I = 0x5

.field public static final INVALID_BOOTSTRAPPING_ID:I = 0xe

.field public static final INVALID_NDP_ID:I = 0x7

.field public static final INVALID_PAIRING_ID:I = 0xd

.field public static final INVALID_PEER_ID:I = 0x6

.field public static final INVALID_SESSION_ID:I = 0x3

.field public static final NAN_NOT_ALLOWED:I = 0x8

.field public static final NO_OTA_ACK:I = 0x9

.field public static final NO_RESOURCES_AVAILABLE:I = 0x4

.field public static final PROTOCOL_FAILURE:I = 0x2

.field public static final SUCCESS:I = 0x0

.field public static final UNSUPPORTED_CONCURRENCY_NAN_DISABLED:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static fromAidl(I)I
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string v0, "Unknown NanStatusType received from AIDL: "

    .line 5
    .line 6
    const-string v1, "SemWifiNanIface"

    .line 7
    .line 8
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :pswitch_0
    const/16 p0, 0xe

    .line 14
    .line 15
    return p0

    .line 16
    :pswitch_1
    const/16 p0, 0xd

    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_2
    const/16 p0, 0xc

    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_3
    const/16 p0, 0xb

    .line 23
    .line 24
    return p0

    .line 25
    :pswitch_4
    const/16 p0, 0xa

    .line 26
    .line 27
    return p0

    .line 28
    :pswitch_5
    const/16 p0, 0x9

    .line 29
    .line 30
    return p0

    .line 31
    :pswitch_6
    const/16 p0, 0x8

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_7
    const/4 p0, 0x7

    .line 35
    return p0

    .line 36
    :pswitch_8
    const/4 p0, 0x6

    .line 37
    return p0

    .line 38
    :pswitch_9
    const/4 p0, 0x5

    .line 39
    return p0

    .line 40
    :pswitch_a
    const/4 p0, 0x4

    .line 41
    return p0

    .line 42
    :pswitch_b
    const/4 p0, 0x3

    .line 43
    return p0

    .line 44
    :pswitch_c
    const/4 p0, 0x2

    .line 45
    return p0

    .line 46
    :pswitch_d
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :pswitch_e
    const/4 p0, 0x0

    .line 49
    return p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public static fromHidl(I)I
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string v0, "Unknown NanStatusType received from HIDL: "

    .line 5
    .line 6
    const-string v1, "SemWifiNanIface"

    .line 7
    .line 8
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :pswitch_0
    const/16 p0, 0xc

    .line 14
    .line 15
    return p0

    .line 16
    :pswitch_1
    const/16 p0, 0xb

    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_2
    const/16 p0, 0xa

    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_3
    const/16 p0, 0x9

    .line 23
    .line 24
    return p0

    .line 25
    :pswitch_4
    const/16 p0, 0x8

    .line 26
    .line 27
    return p0

    .line 28
    :pswitch_5
    const/4 p0, 0x7

    .line 29
    return p0

    .line 30
    :pswitch_6
    const/4 p0, 0x6

    .line 31
    return p0

    .line 32
    :pswitch_7
    const/4 p0, 0x5

    .line 33
    return p0

    .line 34
    :pswitch_8
    const/4 p0, 0x4

    .line 35
    return p0

    .line 36
    :pswitch_9
    const/4 p0, 0x3

    .line 37
    return p0

    .line 38
    :pswitch_a
    const/4 p0, 0x2

    .line 39
    return p0

    .line 40
    :pswitch_b
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :pswitch_c
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
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
