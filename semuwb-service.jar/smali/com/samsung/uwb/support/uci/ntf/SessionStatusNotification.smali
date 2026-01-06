.class public Lcom/samsung/uwb/support/uci/ntf/SessionStatusNotification;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionStatusNotification.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_STATUS_NTF"


# instance fields
.field public final reasonCode:I

.field public final sessionId:J

.field public final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 5
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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/uci/ntf/SessionStatusNotification;->sessionId:J

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/ntf/SessionStatusNotification;->status:I

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/ntf/SessionStatusNotification;->reasonCode:I

    .line 24
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .line 28
    iget-wide v0, p0, Lcom/samsung/uwb/support/uci/ntf/SessionStatusNotification;->sessionId:J

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v0, p0, Lcom/samsung/uwb/support/uci/ntf/SessionStatusNotification;->status:I

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v4

    iget v0, p0, Lcom/samsung/uwb/support/uci/ntf/SessionStatusNotification;->status:I

    invoke-static {v0}, Lcom/samsung/uwb/support/data/code/SessionState;->getSessionStateName(I)Ljava/lang/String;

    move-result-object v5

    iget v0, p0, Lcom/samsung/uwb/support/uci/ntf/SessionStatusNotification;->reasonCode:I

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/uwb/support/uci/ntf/SessionStatusNotification;->mReasonCode:Lcom/samsung/uwb/support/data/code/ReasonCode;

    iget v1, p0, Lcom/samsung/uwb/support/uci/ntf/SessionStatusNotification;->reasonCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/uwb/support/data/code/ReasonCode;->getReasonName(I)Ljava/lang/String;

    move-result-object v7

    const-string v2, "SESSION_STATUS_NTF"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 28
    const-string v1, "%s, SessionId:%d, Status:0x%s(%s), Reason Code:0x%s(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method
