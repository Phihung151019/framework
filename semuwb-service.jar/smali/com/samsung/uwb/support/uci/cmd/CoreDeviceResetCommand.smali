.class public Lcom/samsung/uwb/support/uci/cmd/CoreDeviceResetCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "CoreDeviceResetCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CORE_DEVICE_RESET_CMD"


# instance fields
.field public final resetConfig:B


# direct methods
.method public constructor <init>(B)V
    .locals 3
    .param p1, "resetConfig"    # B

    .line 25
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 29
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 31
    iput-byte p1, p0, Lcom/samsung/uwb/support/uci/cmd/CoreDeviceResetCommand;->resetConfig:B

    .line 32
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "payload"    # [B

    .line 15
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/uci/cmd/CoreDeviceResetCommand;->resetConfig:B

    .line 22
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 36
    const-string v0, "INVALID"

    .line 37
    .local v0, "description":Ljava/lang/String;
    iget-byte v1, p0, Lcom/samsung/uwb/support/uci/cmd/CoreDeviceResetCommand;->resetConfig:B

    if-nez v1, :cond_0

    .line 38
    const-string v0, "UWBS reset"

    .line 40
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/uci/cmd/CoreDeviceResetCommand;->resetConfig:B

    .line 41
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CORE_DEVICE_RESET_CMD"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    .line 40
    const-string v2, "%s, Value=0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "log":Ljava/lang/String;
    return-object v1
.end method
