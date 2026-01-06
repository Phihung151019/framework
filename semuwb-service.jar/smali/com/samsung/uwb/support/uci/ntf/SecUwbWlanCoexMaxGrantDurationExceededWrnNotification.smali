.class public Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanCoexMaxGrantDurationExceededWrnNotification;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SecUwbWlanCoexMaxGrantDurationExceededWrnNotification.java"


# static fields
.field private static final STATUS_MAX_GRANT_DURATION_EXCEEDED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SEC_WLAN_UWB_IND_STATUS_NTF"


# instance fields
.field private final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "uci"    # [B

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 19
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanCoexMaxGrantDurationExceededWrnNotification;->status:I

    .line 21
    return-void
.end method

.method private getStatusString(I)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # I

    .line 31
    packed-switch p1, :pswitch_data_0

    .line 36
    const-string v0, "Invalid value"

    .local v0, "statusName":Ljava/lang/String;
    goto :goto_0

    .line 33
    .end local v0    # "statusName":Ljava/lang/String;
    :pswitch_0
    const-string v0, "MAXIMUM_GRANT_DURATION exceeded"

    .line 34
    .restart local v0    # "statusName":Ljava/lang/String;
    nop

    .line 39
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 25
    iget v0, p0, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanCoexMaxGrantDurationExceededWrnNotification;->status:I

    int-to-byte v0, v0

    .line 26
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanCoexMaxGrantDurationExceededWrnNotification;->status:I

    invoke-direct {p0, v1}, Lcom/samsung/uwb/support/uci/ntf/SecUwbWlanCoexMaxGrantDurationExceededWrnNotification;->getStatusString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SEC_WLAN_UWB_IND_STATUS_NTF"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 25
    const-string v1, "%s, Status:0x%s(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
