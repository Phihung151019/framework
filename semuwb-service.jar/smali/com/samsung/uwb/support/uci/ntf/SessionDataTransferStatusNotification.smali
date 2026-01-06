.class public Lcom/samsung/uwb/support/uci/ntf/SessionDataTransferStatusNotification;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "SessionDataTransferStatusNotification.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION_DATA_TRANSFER_STATUS_NTF"


# instance fields
.field public final dataSequenceNumber:I

.field public final sessionHandle:Ljava/lang/Long;

.field public final status:I

.field public final txCount:I


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

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/ntf/SessionDataTransferStatusNotification;->sessionHandle:Ljava/lang/Long;

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/uci/ntf/SessionDataTransferStatusNotification;->dataSequenceNumber:I

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/uci/ntf/SessionDataTransferStatusNotification;->status:I

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/uci/ntf/SessionDataTransferStatusNotification;->txCount:I

    .line 25
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 29
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    const-string v2, "SESSION_DATA_TRANSFER_STATUS_NTF"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 30
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 31
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/ntf/SessionDataTransferStatusNotification;->sessionHandle:Ljava/lang/Long;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Session Handle: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 32
    iget v1, p0, Lcom/samsung/uwb/support/uci/ntf/SessionDataTransferStatusNotification;->dataSequenceNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Data Sequence Number: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 33
    iget v1, p0, Lcom/samsung/uwb/support/uci/ntf/SessionDataTransferStatusNotification;->status:I

    int-to-byte v1, v1

    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/uci/ntf/SessionDataTransferStatusNotification;->mDataTransferStatus:Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;

    iget v2, p0, Lcom/samsung/uwb/support/uci/ntf/SessionDataTransferStatusNotification;->status:I

    invoke-static {v2}, Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;->getSessionDataTransferStatus(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Status: 0x%s (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 34
    iget v1, p0, Lcom/samsung/uwb/support/uci/ntf/SessionDataTransferStatusNotification;->txCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TX Count: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 36
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
