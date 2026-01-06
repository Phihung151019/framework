.class public Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceName;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "DeviceName.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DEVICE_NAME"


# instance fields
.field private final deviceName:[B


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

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceName;->deviceName:[B

    .line 18
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceName;->deviceName:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 19
    return-void
.end method


# virtual methods
.method public getDeviceName()[B
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceName;->deviceName:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 27
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/deviceinfo/DeviceName;->deviceName:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 28
    .local v0, "description":Ljava/lang/String;
    const-string v1, "DEVICE_NAME"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
