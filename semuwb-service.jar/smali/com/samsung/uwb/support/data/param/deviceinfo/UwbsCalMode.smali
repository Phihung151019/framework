.class public Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsCalMode;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "UwbsCalMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UWBS_CAL_MODE"


# instance fields
.field private final calibrationMode:[B


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 2
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
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsCalMode;->calibrationMode:[B

    .line 18
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsCalMode;->calibrationMode:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 19
    return-void
.end method


# virtual methods
.method public getCalibrationMode()[B
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsCalMode;->calibrationMode:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/UwbsCalMode;->calibrationMode:[B

    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "description":Ljava/lang/String;
    const-string v1, "UWBS_CAL_MODE"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
