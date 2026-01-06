.class public Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SecUwbWlanIndStatusNotification.java"


# static fields
.field private static HEXCHARS:[C = null

.field private static final STATUS_HIGH_TO_LOW:I = 0x0

.field private static final STATUS_LOW_TO_HIGH:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SEC_UWB_WLAN_IND_STATUS_NTF"


# instance fields
.field private final sessionHandle:I

.field private final status:I

.field private final timeIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;->HEXCHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "uci"    # [B

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 22
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;->status:I

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;->timeIndex:J

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;->sessionHandle:I

    .line 26
    return-void
.end method

.method private getStatusString(I)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # I

    .line 40
    packed-switch p1, :pswitch_data_0

    .line 48
    const-string v0, "Invalid value"

    .local v0, "statusName":Ljava/lang/String;
    goto :goto_0

    .line 45
    .end local v0    # "statusName":Ljava/lang/String;
    :pswitch_0
    const-string v0, "LOW_TO_HIGH"

    .line 46
    .restart local v0    # "statusName":Ljava/lang/String;
    goto :goto_0

    .line 42
    .end local v0    # "statusName":Ljava/lang/String;
    :pswitch_1
    const-string v0, "HIGH_TO_LOW"

    .line 43
    .restart local v0    # "statusName":Ljava/lang/String;
    nop

    .line 51
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toHexStringBE(I)Ljava/lang/String;
    .locals 7
    .param p0, "var"    # I

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 62
    .local v0, "byteArray":[B
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 63
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 64
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 65
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v4, v0, v2

    .line 68
    .local v4, "b":B
    sget-object v5, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;->HEXCHARS:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    sget-object v5, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;->HEXCHARS:[C

    and-int/lit8 v6, v4, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .end local v4    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 30
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 31
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;->status:I

    int-to-byte v1, v1

    .line 32
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;->status:I

    invoke-direct {p0, v2}, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;->getStatusString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SEC_UWB_WLAN_IND_STATUS_NTF"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 31
    const-string v2, "%s, Status:0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 33
    iget-wide v1, p0, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;->timeIndex:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Time Index: %d ms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 34
    iget v1, p0, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;->sessionHandle:I

    invoke-static {v1}, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanIndStatusNotification;->toHexStringBE(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Session Handle: 0x%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 35
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
