.class public Lcom/samsung/uwb/support/data/param/appconfig/HopModeKey;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "HopModeKey.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Hop_Mode_Key"


# instance fields
.field private final hopModeKey:[B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 14
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 15
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 16
    invoke-static {v0, p2}, Lcom/samsung/uwb/support/util/UwbUtil;->getByteArray(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/HopModeKey;->hopModeKey:[B

    .line 17
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 21
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/appconfig/HopModeKey;->hopModeKey:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 22
    .local v0, "value1":I
    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/HopModeKey;->hopModeKey:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 23
    .local v1, "value2":I
    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/appconfig/HopModeKey;->hopModeKey:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 24
    .local v2, "value3":I
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/appconfig/HopModeKey;->hopModeKey:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 26
    .local v3, "value4":I
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v0

    .line 27
    .local v4, "result":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Hop_Mode_Key"

    invoke-super {p0, v6, v5}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
