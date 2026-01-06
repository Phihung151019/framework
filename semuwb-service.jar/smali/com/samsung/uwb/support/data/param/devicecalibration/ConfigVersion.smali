.class public Lcom/samsung/uwb/support/data/param/devicecalibration/ConfigVersion;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "ConfigVersion.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CONFIG_VERSION"


# instance fields
.field private final configVersion:I


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 18
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 19
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/ConfigVersion;->configVersion:I

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "configVersion"    # I

    .line 24
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toByteArray(ILjava/nio/ByteOrder;)[B

    move-result-object v0

    const/16 v1, 0x5c

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 25
    iput p1, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/ConfigVersion;->configVersion:I

    .line 26
    return-void
.end method


# virtual methods
.method public getConfigVersion()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/ConfigVersion;->configVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    iget v0, p0, Lcom/samsung/uwb/support/data/param/devicecalibration/ConfigVersion;->configVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "description":Ljava/lang/String;
    const-string v1, "CONFIG_VERSION"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
