.class public Lcom/samsung/uwb/support/data/param/devicecalibration/PlatformId;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "PlatformId.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PLATFORM_ID"


# instance fields
.field private final platformId:[B


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PlatformId;->platformId:[B

    .line 19
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 21
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PlatformId;->platformId:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 22
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "payload"    # [B

    .line 25
    const/16 v0, 0x5c

    array-length v1, p1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PlatformId;->platformId:[B

    .line 26
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PlatformId;->platformId:[B

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PlatformId;->platformId:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PlatformId;->platformId:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getPlatformId()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PlatformId;->platformId:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/PlatformId;->platformId:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 41
    .local v0, "description":Ljava/lang/String;
    const-string v1, "PLATFORM_ID"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
