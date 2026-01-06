.class public Lcom/samsung/uwb/support/uci/cmd/TestPerRxCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "TestPerRxCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TEST_PER_RX_CMD"


# instance fields
.field public final psduData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "psduData"    # [B

    .line 15
    const/16 v0, 0xd

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/TestPerRxCommand;->psduData:[B

    .line 22
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/TestPerRxCommand;->psduData:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 23
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/samsung/uwb/support/uci/cmd/TestPerRxCommand;->psduData:[B

    array-length v0, v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/TestPerRxCommand;->psduData:[B

    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEST_PER_RX_CMD"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 27
    const-string v1, "%s, PSDU Length:%d, PSDU Data:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method
