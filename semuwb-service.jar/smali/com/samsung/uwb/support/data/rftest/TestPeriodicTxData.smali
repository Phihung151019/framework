.class public Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;
.super Lcom/samsung/uwb/support/data/rftest/TestMeasurement;
.source "TestPeriodicTxData.java"


# instance fields
.field private final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "payload"    # [B

    .line 11
    invoke-direct {p0}, Lcom/samsung/uwb/support/data/rftest/TestMeasurement;-><init>()V

    .line 12
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 13
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;->status:I

    .line 15
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 24
    iget v0, p0, Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;->status:I

    int-to-byte v0, v0

    .line 25
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v2, p0, Lcom/samsung/uwb/support/data/rftest/TestPeriodicTxData;->status:I

    invoke-virtual {v1, v2}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 24
    const-string v1, "Status: 0x%s(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method
