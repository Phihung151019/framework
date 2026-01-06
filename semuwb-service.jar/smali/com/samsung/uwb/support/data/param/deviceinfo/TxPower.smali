.class public Lcom/samsung/uwb/support/data/param/deviceinfo/TxPower;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "TxPower.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TX_POWER"


# instance fields
.field private final txPower:F


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 5
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 15
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 16
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 18
    .local v1, "value":I
    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x7

    invoke-static {v2, v3, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v2

    iput v2, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/TxPower;->txPower:F

    .line 19
    return-void
.end method


# virtual methods
.method public getTxPower()F
    .locals 1

    .line 22
    iget v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/TxPower;->txPower:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    iget v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/TxPower;->txPower:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%5.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "description":Ljava/lang/String;
    const-string v1, "TX_POWER"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
