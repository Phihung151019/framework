.class public Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "UrskDeleteNotification.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "URSK_DELETE_NTF"


# instance fields
.field private final numOfSession:I

.field private final sessionId:[J

.field private final sessionStatus:[I

.field private final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 7
    .param p1, "uci"    # [B

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 20
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 21
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->status:I

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->numOfSession:I

    .line 24
    iget v1, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->numOfSession:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->sessionId:[J

    .line 25
    iget v1, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->numOfSession:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->sessionStatus:[I

    .line 26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->numOfSession:I

    if-ge v1, v2, :cond_0

    .line 27
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->sessionId:[J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 28
    iget-object v2, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->sessionStatus:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getNumOfSession()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->numOfSession:I

    return v0
.end method

.method public getSessionId()[J
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->sessionId:[J

    return-object v0
.end method

.method public getSessionStatus()[I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->sessionStatus:[I

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 50
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 51
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->status:I

    int-to-byte v1, v1

    .line 52
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v3, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->status:I

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->numOfSession:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "URSK_DELETE_NTF"

    filled-new-array {v4, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 51
    const-string v2, "%s, Status:0x%s(%s), Number of SessionId:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 53
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->numOfSession:I

    if-ge v1, v2, :cond_3

    .line 54
    const-string v2, "INVALID"

    .line 55
    .local v2, "description":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->sessionStatus:[I

    aget v3, v3, v1

    if-nez v3, :cond_0

    .line 56
    const-string v2, "RDS removed successfully"

    goto :goto_1

    .line 57
    :cond_0
    iget-object v3, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->sessionStatus:[I

    aget v3, v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 58
    const-string v2, "RDS not found"

    goto :goto_1

    .line 59
    :cond_1
    iget-object v3, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->sessionStatus:[I

    aget v3, v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 60
    const-string v2, "Other error encountered"

    .line 62
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->sessionId:[J

    aget-wide v3, v3, v1

    .line 63
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;->sessionStatus:[I

    aget v4, v4, v1

    int-to-byte v4, v4

    invoke-static {v4}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v3

    .line 62
    const-string v4, "SessionId:%d, SessionStatus:0x%s(%s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 53
    .end local v2    # "description":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
