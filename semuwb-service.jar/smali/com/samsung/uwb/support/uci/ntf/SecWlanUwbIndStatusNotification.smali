.class public Lcom/samsung/uwb/support/uci/ntf/SecWlanUwbIndStatusNotification;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SecWlanUwbIndStatusNotification.java"


# static fields
.field private static final STATUS_WLAN_UWB_IND_CHANGED_TO_HIGH_DURING_RANGING_ROUND:I = 0x2

.field private static final STATUS_WLAN_UWB_IND_HIGH_AT_START_RANGING_ROUND:I = 0x1

.field private static final STATUS_WLAN_UWB_IND_LOW_AT_START_AND_DURING_RANGING_ROUND:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SEC_WLAN_UWB_IND_STATUS_NTF"


# instance fields
.field private final status:I

.field private final timeIndex:J


# direct methods
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

    iput v1, p0, Lcom/samsung/uwb/support/uci/ntf/SecWlanUwbIndStatusNotification;->status:I

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/uci/ntf/SecWlanUwbIndStatusNotification;->timeIndex:J

    .line 25
    return-void
.end method

.method private getStatusString(I)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # I

    .line 38
    packed-switch p1, :pswitch_data_0

    .line 49
    const-string v0, "Invalid value"

    .local v0, "statusName":Ljava/lang/String;
    goto :goto_0

    .line 46
    .end local v0    # "statusName":Ljava/lang/String;
    :pswitch_0
    const-string v0, "WLAN_UWB_IND is changed to High during the ranging round"

    .line 47
    .restart local v0    # "statusName":Ljava/lang/String;
    goto :goto_0

    .line 43
    .end local v0    # "statusName":Ljava/lang/String;
    :pswitch_1
    const-string v0, "WLAN_UWB_IND is High at the start of ranging round"

    .line 44
    .restart local v0    # "statusName":Ljava/lang/String;
    goto :goto_0

    .line 40
    .end local v0    # "statusName":Ljava/lang/String;
    :pswitch_2
    const-string v0, "WLAN_UWB_IND is Low at the start and during the ranging round"

    .line 41
    .restart local v0    # "statusName":Ljava/lang/String;
    nop

    .line 52
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 29
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 30
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/uci/ntf/SecWlanUwbIndStatusNotification;->status:I

    int-to-byte v1, v1

    .line 31
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/uci/ntf/SecWlanUwbIndStatusNotification;->status:I

    invoke-direct {p0, v2}, Lcom/samsung/uwb/support/uci/ntf/SecWlanUwbIndStatusNotification;->getStatusString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SEC_WLAN_UWB_IND_STATUS_NTF"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 30
    const-string v2, "%s, Status:0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 32
    iget-wide v1, p0, Lcom/samsung/uwb/support/uci/ntf/SecWlanUwbIndStatusNotification;->timeIndex:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Time Index: %d ms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 33
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
