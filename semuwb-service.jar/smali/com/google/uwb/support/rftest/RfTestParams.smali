.class public abstract Lcom/google/uwb/support/rftest/RfTestParams;
.super Lcom/google/uwb/support/base/Params;
.source "RfTestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/rftest/RfTestParams$RfTestOperationType;,
        Lcom/google/uwb/support/rftest/RfTestParams$StsDetectBitmap;,
        Lcom/google/uwb/support/rftest/RfTestParams$StsIndexAutoIncr;,
        Lcom/google/uwb/support/rftest/RfTestParams$PhrRangingBit;,
        Lcom/google/uwb/support/rftest/RfTestParams$RandomizePsdu;,
        Lcom/google/uwb/support/rftest/RfTestParams$SessionType;,
        Lcom/google/uwb/support/rftest/RfTestParams$SessionId;
    }
.end annotation


# static fields
.field public static final AUTO_INCR_STS_INDEX:I = 0x1

.field public static final DISABLE_PHR:I = 0x0

.field public static final ENABLE_PHR:I = 0x1

.field public static final NO_AUTO_INCR:I = 0x0

.field public static final NO_RANDOMIZATION:I = 0x0

.field public static final NO_STS_DETECT_BITMAP:I = 0x0

.field public static final PROTOCOL_NAME:Ljava/lang/String; = "rftest"

.field public static final RANDOMIZE_PSDU:I = 0x1

.field public static final REPORT_STS_DETECT_BITMAP:I = 0x1

.field public static final SESSION_ID_RFTEST:I = 0x0

.field public static final SESSION_TYPE_RFTEST:I = 0xd0

.field public static final TEST_LOOPBACK:I = 0x3

.field public static final TEST_PERIODIC_TX:I = 0x0

.field public static final TEST_PER_RX:I = 0x1

.field public static final TEST_RX:I = 0x2

.field public static final TEST_SR_RX:I = 0x5

.field public static final TEST_SS_TWR:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/uwb/support/base/Params;-><init>()V

    return-void
.end method

.method public static byteArrayToIntArray([B)[I
    .locals 3
    .param p0, "bytes"    # [B

    .line 150
    if-nez p0, :cond_0

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    .line 155
    .local v0, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 156
    aget-byte v2, p0, v1

    aput v2, v0, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static intArrayToByteArray([I)[B
    .locals 3
    .param p0, "values"    # [I

    .line 138
    if-nez p0, :cond_0

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 142
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 143
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static isCorrectProtocol(Landroid/os/PersistableBundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 40
    const-string v0, "rftest"

    invoke-static {p0, v0}, Lcom/google/uwb/support/rftest/RfTestParams;->isProtocol(Landroid/os/PersistableBundle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCorrectProtocol(Ljava/lang/String;)Z
    .locals 1
    .param p0, "protocolName"    # Ljava/lang/String;

    .line 45
    const-string v0, "rftest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getProtocolName()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "rftest"

    return-object v0
.end method
